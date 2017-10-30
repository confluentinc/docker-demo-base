ARG DOCKER_REGISTRY
ARG PROJECT_VERSION

FROM ${DOCKER_REGISTRY}confluentinc/cp-base:${PROJECT_VERSION}

ARG PROJECT_VERSION
ARG MAJOR_MINOR
ARG ARTIFACT_ID

RUN wget -q https://s3-us-west-2.amazonaws.com/confluent-packages-${PROJECT_VERSION}/archive/${MAJOR_MINOR}/confluent-oss-${PROJECT_VERSION}-2.11.tar.gz \
    && tar xzvf confluent-oss-${PROJECT_VERSION}-2.11.tar.gz --strip-components 1 \
    && rm confluent-oss-${PROJECT_VERSION}-2.11.tar.gz
