---
name: browser-coreclr-testing
description: Build runtime for Browser target and run library unit tests
---

## When to Use This Skill

Use this skill when:
- Investigating CI failures or checking why a PR's tests are failing
- Debugging Helix test issues or analyzing build errors
- Given URLs containing `dev.azure.com`, `helix.dot.net`, or GitHub PR links with failing checks
- Asked questions like "why is this PR failing", "analyze the CI failures", or "what's wrong with this build"

## Quick Start

**Note:** Examples use relative paths from the skill directory (`.github/skills/azdo-helix-failures/`).

```powershell
# Analyze PR failures (most common) - defaults to dotnet/runtime
./scripts/Get-HelixFailures.ps1 -PRNumber 123445 -FetchFromHelix

# Analyze by build ID
./scripts/Get-HelixFailures.ps1 -BuildId 1276327 -FetchFromHelix

# Query specific Helix work item
./scripts/Get-HelixFailures.ps1 -HelixJob "4b24b2c2-..." -WorkItem "System.Net.Http.Tests"

# Other dotnet repositories
./scripts/Get-HelixFailures.ps1 -PRNumber 12345 -Repository "dotnet/aspnetcore"
./scripts/Get-HelixFailures.ps1 -PRNumber 67890 -Repository "dotnet/sdk"
./scripts/Get-HelixFailures.ps1 -PRNumber 11111 -Repository "dotnet/roslyn"
```

## Key Parameters

| Parameter | Description |
|-----------|-------------|
| `-PRNumber` | GitHub PR number to analyze |
| `-BuildId` | Azure DevOps build ID |
| `-FetchFromHelix` | Fetch and display Helix console logs |
| `-Repository` | Target repo (default: dotnet/runtime) |
| `-MaxJobs` | Max failed jobs to show (default: 5) |
| `-SearchMihuBot` | Search MihuBot for related issues |

## What the Script Does

1. Fetches Build Analysis for known issues
2. Gets failed jobs from Azure DevOps timeline
3. **Separates canceled jobs from failed jobs** (canceled = dependency failures)
4. Extracts Helix work item failures
5. Fetches console logs (with `-FetchFromHelix`)
6. Searches for known issues with "Known Build Error" label
7. Correlates failures with PR changes
8. **Provides smart retry recommendations**

## References

- **Build runtime for Browser target**: See [references/build-runtime-for-browser.md](./references/build-runtime-for-browser.md)
- **Run Browser CoreCLR library test suite**: See [references/run-browser-library-test-suite.md](./references/run-browser-library-test-suite.md)
- **Compare CI library tests on Helix**: See [references/compare-CI-library-tests-on-helix.md](./references/compare-CI-library-tests-on-helix.md)

## Tips
