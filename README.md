# SimpleBilly Apex SDK

[![Release](https://img.shields.io/github/v/release/simplebilly/simplebilly-apex?label=release&logo=github)](https://github.com/simplebilly/simplebilly-apex/releases)
[![CI](https://github.com/simplebilly/simplebilly-apex/actions/workflows/release.yml/badge.svg)](https://github.com/simplebilly/simplebilly-apex/actions/workflows/release.yml)
[![CodeQL](https://github.com/simplebilly/simplebilly-apex/actions/workflows/codeql.yml/badge.svg)](https://github.com/simplebilly/simplebilly-apex/actions/workflows/codeql.yml)
[![Scorecard](https://github.com/simplebilly/simplebilly-apex/actions/workflows/scorecard.yml/badge.svg)](https://github.com/simplebilly/simplebilly-apex/actions/workflows/scorecard.yml)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/simplebilly/simplebilly-apex/badge)](https://scorecard.dev/viewer/?uri=github.com/simplebilly/simplebilly-apex)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Docs](https://img.shields.io/badge/docs-simplebilly.com-blue)](https://simplebilly.com/api/docs)

Official Apex client for the [SimpleBilly API](https://simplebilly.com/api/docs).

> This repository contains generated code — do not edit manually. It is rebuilt
> automatically on every new release of the SimpleBilly OpenAPI specification by
> the pipeline in `.github/workflows/release.yml` (fetch spec → generate →
> commit → tag → GitHub release). Each release is tagged `v<version>` and
> published under [Releases](https://github.com/simplebilly/simplebilly-apex/releases).

## Installation

The package is published to the Apex package registry (and to [GitHub Packages](https://github.com/orgs/simplebilly/packages) — free for public packages).
See the [Releases](https://github.com/simplebilly/simplebilly-apex/releases) page for the list
of versions and registry coordinates.

```bash
# registry coordinates are generator-specific, see release notes
# TypeScript: npm install @simplebilly/api
# Python:     pip install simplebilly-api
# Go:         go get github.com/simplebilly/simplebilly-go
# Java:       com.simplebilly:simplebilly-api-client
# Rust:       simplebilly_api = "0.1"
```

> **After the first release** this section is replaced by the language-specific
> installation snippet generated from the OpenAPI spec.

## Usage

See the [API documentation](https://simplebilly.com/api/docs) for endpoints, authentication and examples.
Language-specific snippets are generated into the SDK — see the `docs/` folder (if present) after the first release.

```typescript
// quickstart — import the generated client
import { Configuration, DefaultApi } from '@simplebilly/api';
const api = new DefaultApi(new Configuration({ basePath: 'https://simplebilly.com/api/v1', accessToken: 'YOUR_TOKEN' }));
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) — do not edit generated code by hand. Generator tweaks belong in `simplebilly/sdks` (`languages.tsv`).

## Security

See [SECURITY.md](SECURITY.md) for reporting vulnerabilities. SAST via CodeQL and OpenSSF Scorecard runs on every push (free tier).

## License

[MIT](LICENSE) — Copyright (c) SimpleBilly GmbH. See [LICENSE](LICENSE) for details.

## Links

- **Homepage:** https://simplebilly.com
- **API documentation:** https://simplebilly.com/api/docs
- **OpenAPI specification:** https://simplebilly.com/api/v1/openapi.json
- **Other SDKs:** https://github.com/simplebilly

SimpleBilly is the first bookkeeping, CRM, online shop and ERP that follows the mantra: "just do it"
