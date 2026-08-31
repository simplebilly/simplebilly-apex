# Security Policy

## Supported Versions

| Version | Supported |
|---------|-----------|
| `main` (latest `v*` tag) | ✅ |
| older tags | ❌ (please upgrade to latest release) |

This is a generated SDK — the **source of truth is the SimpleBilly API and its OpenAPI specification**. Security fixes land via a new SDK release (new `v*` tag) generated from the patched spec.

## Reporting a Vulnerability

- **Email:** security@simplebilly.com
- **Subject:** `[Security] simplebilly-<lang> — <short title>`
- Please include: affected repo + tag, steps to reproduce, impact, and if possible a PoC.
- We aim to acknowledge within **2 business days** and to ship a fix via a new release.

Do **not** open a public issue for vulnerabilities.

## What is scanned

- **CodeQL** (`codeql.yml`) on every push to `main` and weekly — results in the **Security → Code scanning** tab.
- **OpenSSF Scorecard** (`scorecard.yml`) weekly — also uploaded as SARIF, badge via `api.scorecard.dev`.
- **Dependabot alerts** (enable at org level: Settings → Code security → Dependabot alerts).

No GitHub Advanced Security subscription required.

## Coordinated Disclosure

We follow coordinated disclosure — please give us reasonable time to release a fix before public disclosure. We credit reporters in release notes unless you prefer to stay anonymous.
