# claude-ci-pipeline

**AI-powered CI/CD pipeline skill for Claude Code -- GitHub Actions workflow creation, debugging, optimization, and security hardening.**

[![GitHub stars](https://img.shields.io/github/stars/creo-kit/claude-ci-pipeline?style=flat-square)](https://github.com/creo-kit/claude-ci-pipeline)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

---

## What It Does

- **Creates GitHub Actions workflows** -- generates complete CI/CD pipelines tailored to your stack (Node.js, Python, Docker, monorepos)
- **Debugs failing pipelines** -- classifies failures (setup, build, test, Docker, env, permissions) and applies targeted fixes
- **Optimizes build times** -- parallel jobs, dependency caching (pnpm, Docker layers), selective CI with path filters, artifact sharing
- **Security hardening** -- environment and secret management, token scoping, branch protection checks
- **Matrix builds** -- multi-version, multi-OS testing strategies with fail-fast control

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/creo-kit/claude-ci-pipeline/main/install.sh | bash
```

Or clone manually:

```bash
git clone --depth 1 https://github.com/creo-kit/claude-ci-pipeline.git ~/.claude/skills/claude-ci-pipeline
```

## Usage

```
/creo pipeline create      # Create a new CI/CD pipeline for your project
/creo pipeline debug       # Debug a failing GitHub Actions workflow
/creo pipeline optimize    # Optimize pipeline speed and cost
```

### Example: Create a pipeline

```
/creo pipeline create

> Analyzing your project... Found: Node.js monorepo with pnpm, Docker deployment.
> Creating .github/workflows/ci.yml with lint, test, build, and deploy stages.
> Caching configured for pnpm-store and Docker buildx layers.
> Required secrets: DATABASE_URL, DEPLOY_TOKEN
```

### Example: Debug a failure

```
/creo pipeline debug

> Fetching latest failed run... Run #142 failed at job "test".
> Classification: TEST -- assertion timeout on integration suite.
> Fix: increased service health-check wait, added retry on flaky DB connection.
```

## Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/creo-kit/claude-ci-pipeline/main/uninstall.sh | bash
```

## Part of Creo

This skill is a standalone extract from [Creo](https://github.com/oyusypenko/creo), an AI-powered design and development toolkit for Claude Code. Creo includes 12 specialized skills covering design review, UX analysis, marketing content, SEO, DevOps, CI/CD, testing, and more.

## Compatibility

| Tool | Supported |
|------|-----------|
| [Claude Code](https://docs.anthropic.com/en/docs/claude-code) | Yes |
| [Codex CLI](https://github.com/openai/codex) | Yes |
| [Cursor](https://cursor.sh) | Yes |
| [Gemini CLI](https://github.com/google-gemini/gemini-cli) | Yes |

## License

[MIT](LICENSE)
