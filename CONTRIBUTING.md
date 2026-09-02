# Contributing

> **Do not edit generated code by hand.** This repository is rebuilt automatically from the [SimpleBilly OpenAPI spec](https://api.simplebilly.com/openapi.json) on every release. Manual edits are overwritten by the next `release.yml` run.

## How to contribute

1. **API bug / missing endpoint / wrong schema?** Open an issue in this repo (or in the main app repo) with: endpoint, expected vs actual, and a minimal request/response.
2. **SDK generator tweak** (e.g. `extra_props` / `version_prop`)? Open a PR against `simplebilly/sdks` — `languages.tsv` is the source of truth, not this repo.
3. **Docs / README / security policy?** PRs welcome — these files are not overwritten by generation (they live outside `/tmp/sdk`).

## Development

```bash
# run what the release workflow does locally
VERSION=v0.1.0 GENERATOR=typescript-fetch LANGUAGE=TypeScript \
  bash .github/stamp-backlinks.sh . typescript-fetch TypeScript v0.1.0
```

## Release process

Releases are created by the `release` workflow (triggered via `workflow_dispatch` from the `simplebilly/sdks` GitLab pipeline). Each release is tagged `v<version>` and appears under **Releases**.

## Code of Conduct

Be kind. We review PRs within a few business days.
