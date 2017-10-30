# Docker Demo Base

Base image built on stable releases of confluent-oss, for throwing together quick and dirty demos.

*Not for production use.*

## Building

Build with: `mvn package`

https://hub.docker.com/r/confluentinc/docker-demo-base/

## Bumping

1) Create a new -post branch in this repo, based on the desired release (eg. 4.0.0-post)

2) In pom.xml, bump project.version (e.g. 4.0.0) and the major.minor build property (e.g. 4.0). Edit Dockerfile if further changes are needed.

3) Test changes and push new branch. Push to Docker Hub as needed.
