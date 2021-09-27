# Conventional Commits

Commit messages are important for establishing the context of the commit. They can be viewed through many different downstream tools and can be used as the building blocks of changelogs. However, they are often overly-simplistic or, worse, one line. This project uses the [Conventional Commits specification](https://www.conventionalcommits.org/en/v1.0.0/) and adds on the thoughts from [Brain Beams' blog post](https://chris.beams.io/posts/git-commit/) on what makes a good commit message. We do not use the scope option.

There is a template available in [docs/examples](docs/examples/commitmessage). To use it for just this repository, simply run `git config commit.template docs/examples/commitmessage` from the root of this repo. Alternatively, you could install it globally.

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

<!-- TODO Find and Implement Conventional Commit pre-commit hook -->

<!-- markdownlint-disable-file MD033 -->