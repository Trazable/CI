# Trazable CI Image

Trazable docker image for CI use.

# Composition

Builded on alpine linux

This image contains the next binaries:
  - Google cloud 271.0.0
  - Docker 17.12.0-ce
  - Terraform 0.12.12
  - Docker-compose 1.24.1

# Docker Hub CI

Docker hub is linked with the github repository, master branch is the trigger to build the image in the dockerhub's runners, the tag of the images is the tag created with git in the github repository.  
To create a tag you should type the next commands:

```
git tag --annotate {desired_tag}
git push origin --tags (Push all tags)
```
