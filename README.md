# Example Base Repo <!-- omit in toc -->

This is an example base repo to demonstrate some best practices in development.

## How to use this repository <!-- omit in toc -->

You will need a working python environment and docker in place to use all the features of this repository.

1. Install requirements
   - Python
   - Docker
2. Clone this repository
3. Delete the .git folder
4. Make any changes that you may want!

## Repository features <!-- omit in toc -->

- [Conventional Commits](#conventional-commits)
  - [Conventional Commits ToDo](#conventional-commits-todo)
- [TODO Containerized Tools](#todo-containerized-tools)
- [InnerSource Best Practices](#innersource-best-practices)
- [Markdown Architectural Decision Records](#markdown-architectural-decision-records)
  - [MADR ToDo](#madr-todo)
- [MarkdownLint](#markdownlint)
- [TODO MKDocs](#todo-mkdocs)
- [TODO Pre-commit Framework](#todo-pre-commit-framework)
- [TODO SemVer support](#todo-semver-support)
  - [SemVer TODO](#semver-todo)
- [VSCode Support](#vscode-support)
  - [DevContainer support](#devcontainer-support)
    - [DevContainer ToDo](#devcontainer-todo)

## Conventional Commits

Commit messages are important for establishing the context of the commit. They can be viewed through many different downstream tools and can be used as the building blocks of changelogs. However, they are often overly-simplistic or, worse, one line. This project uses the [Conventional Commits specification](https://www.conventionalcommits.org/en/v1.0.0/) and adds on the thoughts from [Brain Beams' blog post](https://chris.beams.io/posts/git-commit/) on what makes a good commit message. We do not use the scope option.

> The Conventional Commits specification is a lightweight convention on top of commit messages. It provides an easy set of rules for creating an explicit commit history; which makes it easier to write automated tools on top of. This convention dovetails with SemVer, by describing the features, fixes, and breaking changes made in commit messages.
>
> The commit message should be structured as follows:
>
>```text
><type>[optional scope]: <description>
>
>[optional body]
>
>[optional footer(s)]
>
>```
>
>The commit contains the following structural elements, to communicate intent to the consumers of your library:
>
>**fix**: a commit of the type fix patches a bug in your codebase (this correlates with PATCH in Semantic Versioning).
>
>**feat**: a commit of the type feat introduces a new feature to the codebase (this correlates with MINOR in Semantic Versioning).
>
>**BREAKING CHANGE**: a commit that has a footer BREAKING CHANGE:, or appends a ! after the type/scope, introduces a breaking API change (correlating with MAJOR in Semantic Versioning). A BREAKING CHANGE can be part of commits of any type.
>
>**types other than fix**: and feat: are allowed, for example @commitlint/config-conventional (based on the the Angular convention) recommends build:, chore:, ci:, docs:, style:, refactor:, perf:, test:, and others.
>**footers other than BREAKING CHANGE**: <description> may be provided and follow a convention similar to git trailer format.
>Additional types are not mandated by the Conventional Commits specification, and have no implicit effect in Semantic Versioning (unless they include a BREAKING CHANGE). A scope may be provided to a commit’s type, to provide additional contextual information and is contained within parenthesis, e.g., feat(parser): add ability to parse arrays.
>
> --- <cite>[https://www.conventionalcommits.org/en/v1.0.0/](https://www.conventionalcommits.org/en/v1.0.0/)</cite>

In addition to the above, we include Brian Beam's key [point, #7](https://chris.beams.io/posts/git-commit/#why-not-how).

>In most cases, you can leave out details about how a change has been made. Code is generally self-explanatory in this regard (and if the code is so complex that it needs to be explained in prose, that’s what source comments are for). **Just focus on making clear the reasons why you made the change in the first place**—the way things worked before the change (and what was wrong with that), the way they work now, and **why you decided to solve it the way you did.**
>
> --- <cite>[https://chris.beams.io/posts/git-commit/#why-not-how](https://chris.beams.io/posts/git-commit/#why-not-how)</cite>, emphasis mine

### Conventional Commits ToDo

- [ ] Find and Implement Conventional Commit pre-commit hook

## TODO Containerized Tools

## InnerSource Best Practices

[InnerSource](https://innersourcecommons.org/) best practices include:

- A [Code of Conduct](CODEOFCONDUCT.md)
- A [Contributing](CONTRIBUTING.md) guide
- Recognition of [Contributors](CONTRIBUTORS.md)
- A clear [license](LICENSE.md)
- A list of [owners/trusted contributors](OWNERS.md) and how to reach them
- A [security policy](SECURITY.md)

## Markdown Architectural Decision Records

Keeping track of the architectural decisions made for a project within the project's documentation is a good way to document and track the *why* of decisions that led to the code being what it is. This repository uses the [Markdown Architectural Decision Record format](https://adr.github.io/madr/) and treats them like [other documentation](docs\ADRs).

> An [Architectural Decision (AD)](https://en.wikipedia.org/wiki/Architectural_decision) is a software design choice that addresses a functional or non-functional requirement that is architecturally significant. This might, for instance, be a technology choice (e.g., Java vs. JavaScript), a choice of the IDE (e.g., IntelliJ vs. Eclipse IDE), a choice between a library (e.g., [SLF4J](https://www.slf4j.org/) vs [java.util.logging](https://docs.oracle.com/javase/8/docs/api/java/util/logging/package-summary.html)), or a decision on features (e.g., infinite undo vs. limited undo). Do not take the term “architecture” too seriously or interpret it too strongly. As the examples illustrate, any decisions that might have an impact on the architecture somehow are architectural decisions.
>
> --- <cite>[https://adr.github.io/madr/](https://adr.github.io/madr/)</cite>

### MADR ToDo

- [ ] Find and Implement MADR tool for VSCode

## MarkdownLint

[David Anson](https://dlaa.me/)'s [MarkdownLint](https://github.com/DavidAnson/markdownlint) is a fantastic tool to ensure good, standard formatting of [markdown](https://www.markdownguide.org/) files. This repository also uses the [vscode extension](https://github.com/DavidAnson/vscode-markdownlint) for MarkdownLint. For more information, see the [VSCode DevContainers](#devcontainer-support) section.

> The Markdown markup language is designed to be easy to read, write, and understand. It succeeds - and its flexibility is both a benefit and a drawback. Many styles are possible, so formatting can be inconsistent. Some constructs don't work well in all parsers and should be avoided. The CommonMark specification standardizes parsers - but not authors.
>
>markdownlint is a static analysis tool for Node.js with a library of rules to enforce standards and consistency for Markdown files. It was inspired by - and heavily influenced by - Mark Harrison's markdownlint for Ruby. The initial rules, rule documentation, and test cases came directly from that project.
>
> --- <cite>[https://github.com/DavidAnson/markdownlint](https://github.com/DavidAnson/markdownlint)</cite>

## TODO MKDocs

## TODO Pre-commit Framework

## TODO SemVer support

To ease versioning, and adopt a standard that is supported in many tools, this repository uses [Semantic Versioning 2.0](https://semver.org/).

>Given a version number **MAJOR**.**MINOR**.**PATCH**, increment the:
>
>**MAJOR** version when you make incompatible API changes,
>
>**MINOR** version when you add functionality in a backwards compatible manner, and
>
>**PATCH** version when you make backwards compatible bug fixes.
>
>Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.
>
> --- <cite>[https://semver.org/](https://semver.org/)</cite>

### SemVer TODO

- [ ] Locate and implement clean semver versioning tool

## VSCode Support

[VSCode](https://code.visualstudio.com/) is a fantastic, free, open source editor and lightweight IDE. It supports a large [plugin ecosystem (extensions)](https://marketplace.visualstudio.com/VSCode) and [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview) in containers which can dramatically reduce new contributor onboarding time. It is my preferred editor and so this repository supports it with a [.vscode](.vscode/) and [.devcontainer](.devcontainer/) folders.

### DevContainer support

One of VSCode's killer features is the ability to [develop inside of a container](https://code.visualstudio.com/docs/remote/containers). This allows a team to design a container with **all** project dependencies included so that a new contributor needs to have installed is VSCode & docker. Then off they go to contributor nirvana! New contributor onboarding time and frustration can virtually disappear.

This repository uses an Ubuntu Focal base container and is locally built. See the [.devcontainer](.devcontainer/) folder for more details.

#### DevContainer ToDo

- [ ] Build a separate DevContainer to support this project so that a contributor does not have to build the container each time they create a new project with this repo as a base.

<!-- markdownlint-disable-file MD033 -->