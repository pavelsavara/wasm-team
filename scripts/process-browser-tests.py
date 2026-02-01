#!/usr/bin/env python3

"""
Script to scan source files for Browser-skipped tests and generate reports.

Usage: Run from the root of a runtime repository (runtime or runtime2)
    python3 ../wasm-team/scripts/process-browser-tests.py
"""

import re
import os
import sys
from pathlib import Path
from collections import defaultdict

def get_repo_root():
    """Get the runtime repository root from current directory."""
    cwd = Path.cwd()
    if (cwd / "build.sh").exists() and (cwd / "src/libraries").exists():
        return cwd
    print("Error: This script must be run from the root of a runtime repository.")
    print(f"Current directory: {cwd}")
    sys.exit(1)

# Base path for the repository
REPO_ROOT = get_repo_root()

# Pattern to match Browser-related test skip attributes
BROWSER_ATTR_PATTERN = re.compile(
    r'\[(ActiveIssue|SkipOnPlatform|ConditionalFact|ConditionalTheory)[^\]]*Browser[^\]]*\]'
)

def find_browser_skipped_tests():
    """Scan source files to find tests with Browser-related skip attributes."""
    tests = []
    
    # Search in src/libraries for test files
    libraries_path = REPO_ROOT / "src" / "libraries"
    
    for test_file in libraries_path.rglob("*.cs"):
        # Only look in test directories
        if "/tests/" not in str(test_file):
            continue
        
        try:
            with open(test_file, 'r', encoding='utf-8', errors='ignore') as f:
                lines = f.readlines()
        except Exception as e:
            print(f"Warning: Could not read {test_file}: {e}")
            continue
        
        for line_num, line in enumerate(lines, start=1):
            match = BROWSER_ATTR_PATTERN.search(line)
            if match:
                attr_type = match.group(1)
                rel_path = test_file.relative_to(REPO_ROOT)
                tests.append({
                    'file': str(rel_path),
                    'line': line_num,
                    'attr_type': attr_type,
                    'raw_line': line.strip()
                })
    
    return tests

def extract_test_info_from_file(filepath, line_num):
    """Extract the test method name and class from the source file."""
    full_path = REPO_ROOT / filepath
    if not full_path.exists():
        return None, None, None
    
    with open(full_path, 'r') as f:
        lines = f.readlines()
    
    # Find the test method name (look forward from the attribute line)
    method_name = None
    class_name = None
    namespace = None
    
    # Look for method definition after the attribute (allow up to 10 lines for intermediate attributes/comments)
    for i in range(line_num - 1, min(line_num + 10, len(lines))):
        line = lines[i]
        method_match = re.search(r'public\s+(?:static\s+)?(?:async\s+)?(?:\w+(?:<[^>]+>)?)\s+(\w+)\s*\(', line)
        if method_match:
            method_name = method_match.group(1)
            break
    
    # Look backward for class name
    for i in range(line_num - 1, -1, -1):
        line = lines[i]
        class_match = re.search(r'(?:public\s+)?(?:sealed\s+)?(?:abstract\s+)?(?:static\s+)?class\s+(\w+)', line)
        if class_match:
            class_name = class_match.group(1)
            break
    
    # Look for namespace
    for i in range(min(line_num - 1, len(lines) - 1), -1, -1):
        line = lines[i]
        ns_match = re.search(r'namespace\s+([\w.]+)', line)
        if ns_match:
            namespace = ns_match.group(1)
            break
    
    return namespace, class_name, method_name

def get_project_info(filepath):
    """Determine the test project path and name from the source file path."""
    parts = Path(filepath).parts
    
    # Find the tests directory and construct project path
    if 'tests' in parts:
        tests_idx = parts.index('tests')
        # Look for .csproj file
        test_dir = REPO_ROOT / Path(*parts[:tests_idx + 2])
        for csproj in test_dir.rglob('*.csproj'):
            if 'Tests' in csproj.name:
                project_path = csproj.relative_to(REPO_ROOT)
                # Extract suite name (csproj filename without extension)
                suite_name = csproj.stem
                return str(project_path), suite_name
    
    return None, None

def generate_run_script(tests):
    """Generate the run-all-failed-tests.sh script."""
    script_lines = [
        "#!/bin/bash",
        "# Auto-generated script to run browser tests that were previously skipped",
        "# Each line runs a single test method via run-test-suite.sh",
        "#",
        "# Usage: Run from the root of a runtime repository (runtime or runtime2)",
        "#   bash ../wasm-team/scripts/run-all-failed-tests.sh",
        "",
        "set -e",
        "",
        "SCRIPT_DIR=\"$(cd \"$(dirname \"${BASH_SOURCE[0]}\")\" && pwd)\"",
        "",
    ]
    
    # Group tests by project
    tests_by_project = defaultdict(list)
    for test in tests:
        project_path, suite_name = get_project_info(test['file'])
        if project_path and suite_name:
            ns, cls, method = extract_test_info_from_file(test['file'], test['line'])
            if cls and method:
                fqn = f"{ns}.{cls}.{method}" if ns else f"{cls}.{method}"
                tests_by_project[(project_path, suite_name)].append({
                    'fqn': fqn,
                    'class': cls,
                    'method': method,
                    'file': test['file'],
                    'line': test['line']
                })
    
    for (project_path, suite_name), test_list in sorted(tests_by_project.items()):
        script_lines.append(f"# Tests from {project_path}")
        for t in test_list:
            script_lines.append(f"\"$SCRIPT_DIR/run-test-suite.sh\" \"{suite_name}\" \"{project_path}\" -m {t['fqn']} # {t['file']}:{t['line']}")
    
    script_lines.append("echo \"All specified tests have been run.\"")
    script_lines.append("")
    script_lines.append("#################################")
    script_lines.append("")
    return script_lines

def modify_source_file(filepath, modifications):
    """Modify a source file to remove/change attributes."""
    full_path = REPO_ROOT / filepath
    if not full_path.exists():
        print(f"File not found: {full_path}")
        return
    
    with open(full_path, 'r') as f:
        lines = f.readlines()
    
    # Sort modifications by line number in reverse order to avoid offset issues
    modifications = sorted(modifications, key=lambda x: x['line'], reverse=True)
    
    for mod in modifications:
        line_idx = mod['line'] - 1
        if line_idx >= len(lines):
            continue
        
        line = lines[line_idx]
        original_line = line
        
        # Remove ActiveIssue attributes that reference Browser
        if 'ActiveIssue' in line and 'Browser' in line:
            # Remove the entire attribute
            line = re.sub(r'\s*\[ActiveIssue\([^]]*Browser[^]]*\)\]\s*\n?', '\n', line)
            if line.strip() == '':
                lines[line_idx] = ''
                continue
        
        # Remove SkipOnPlatform attributes that reference Browser
        if 'SkipOnPlatform' in line and 'Browser' in line:
            line = re.sub(r'\s*\[SkipOnPlatform\([^]]*Browser[^]]*\)\]\s*\n?', '\n', line)
            if line.strip() == '':
                lines[line_idx] = ''
                continue
        
        # Change ConditionalFact to Fact
        if 'ConditionalFact' in line:
            line = re.sub(r'\[ConditionalFact\([^]]*\)\]', '[Fact]', line)
        
        # Change ConditionalTheory to Theory
        if 'ConditionalTheory' in line:
            line = re.sub(r'\[ConditionalTheory\([^]]*\)\]', '[Theory]', line)
        
        lines[line_idx] = line
    
    # Write back
    with open(full_path, 'w') as f:
        f.writelines(lines)
    
    print(f"Modified: {filepath}")

def main():
    print(f"Runtime root: {REPO_ROOT}")
    print("Scanning source files for Browser-skipped tests...")
    tests = find_browser_skipped_tests()
    print(f"Found {len(tests)} test entries")
    
    # Generate run script
    print("\nGenerating run-all-failed-tests.sh...")
    script_content = generate_run_script(tests)
    script_dir = Path(__file__).parent
    script_path = script_dir / "run-all-failed-tests.sh"
    with open(script_path, 'w') as f:
        f.write('\n'.join(script_content))
    os.chmod(script_path, 0o755)
    print(f"Created: {script_path}")
    
    # Group modifications by file
    mods_by_file = defaultdict(list)
    for test in tests:
        mods_by_file[test['file']].append(test)
    
    # Apply modifications
    print("\nModifying source files...")
    for filepath, mods in mods_by_file.items():
        modify_source_file(filepath, mods)
    
    print("\nDone!")

if __name__ == '__main__':
    main()
