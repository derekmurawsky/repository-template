# Pre-commit Framework

[Pre-commit](https://pre-commit.com/) is a python framework to manage git pre-commit hooks in a sane manner. By leveraging pre-commit hooks and linters, we shift feedback completely left, letting the developers know that their commits pass our basic checks, or that they need more work. This repository has the following hooks configured in the .pre-commit-config.yaml file:

- [GitLeaks (via docker)](https://github.com/zricethezav/gitleaks) - Scans all files in the repository for secrets that shouldn't be there.
- [MarkdownLint-cli (via docker)](#markdownlint) - David Anson's [Markdownlint CLI](https://github.com/DavidAnson/markdownlint-cli2) tool.

Additional linters should be configured based on your project's language and need.

<!-- TODO Add additional examples of commonly used precommit linters -->