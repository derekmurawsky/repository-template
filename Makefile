# Make is fairly ubiquitous and it makes life much easier for developers. Think of this as an API
# with the golden path / supported elements of your project.

.PHONY: docs docs-serve lint-devcontainer 

# Build the docs
docs:
	@mkdocs build

# Run a local server to interactively develop the documentation.	
docs-serve:
	@mkdocs serve

# Lint the devcontainer
lint-devcontainer:
	@hadolint .devcontainer/Dockerfile

# Run pre-commit checks.
pre-commit:
	@pre-commit run --all-files