# MKDocs

MKDocs is a static documentation site generator tailored to technical documentation. It uses simple markdown files as the source and generates robust documentation sites which can be hosted virtually anywhere. This repository makes use of the fully featured [MKDocs-Material](https://squidfunk.github.io/mkdocs-material/) theme via the [squidfunk/mkdocs-material](https://hub.docker.com/r/squidfunk/mkdocs-material) container.

To run the site locally, run the following command:

```bash
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```
