# VSCode Support

[VSCode](https://code.visualstudio.com/) is a fantastic, free, open source editor and lightweight IDE. It supports a large [plugin ecosystem (extensions)](https://marketplace.visualstudio.com/VSCode) and [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview) in containers which can dramatically reduce new contributor onboarding time. It is my preferred editor and so this repository supports it with a [.vscode](.vscode/) and [.devcontainer](.devcontainer/) folders. You can even use VSCode as your commit editor by setting it with `git config core.editor "code --new-window --wait"`

## DevContainer support

One of VSCode's killer features is the ability to [develop inside of a container](https://code.visualstudio.com/docs/remote/containers). This allows a team to design a container with **all** project dependencies included so that a new contributor needs to have installed is VSCode & docker. Then off they go to contributor nirvana! :) New contributor onboarding time and frustration can virtually disappear. There are also [Advanced configuration options available](https://code.visualstudio.com/docs/remote/containers-advanced).

This repository uses an Ubuntu Focal base container and is locally built. See the [.devcontainer](.devcontainer/) folder for more details. Of note, the devcontainer includes:

- [Hadolint](https://github.com/hadolint/hadolint) for checking the devcontainer dockerfile
- Several VSCode Extensions that are very useful
  - [yzhang.markdown-all-in-one](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one): An almost perfect markdown extension. Check out the documentation for the extensive list of features.
  - [davidanson.vscode-markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint): Markdownlint integration for VSCode. Super handy for documentation consistency.
  - [streetsidesoftware.code-spell-checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker): Having a central dictionary keeps warnings cleaner and encourages a shared vocabulary.
  - [eamodio.gitlens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens): A fantastic plugin to see who did what when, and visualize other relevant information from git.
  - [gruntfuggly.todo-tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree): Highlight's TODOs and allows you to generate a tree. Critical? No. Handy? Yes.
  - [exiasr.hadolint](https://marketplace.visualstudio.com/items?itemName=exiasr.hadolint): uses hadolint to lint Dockerfiles
- [Docker-in-docker](https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/docker.md) support, so you can have containers in your containers.

<!-- TODO Build a separate DevContainer to support this project so that a contributor does not have to build the container each time they create a new project with this repo as a base. -->