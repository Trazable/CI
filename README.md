# Trazable CI Image

Trazable docker image for CI use.

# Composition

Builded on alpine linux

This image contains the next binaries:
  - Google cloud 341.0.0
  - Docker 19.03.11
  - Docker-compose 1.27.4

# Docker Hub CI

Docker hub is linked with the github repository, pushing a new tag, is the trigger to build the image in the dockerhub's runners.
To create a tag you should type the next commands:

```
git tag --annotate {desired_tag}
git push origin --tags (Push all tags)
```
