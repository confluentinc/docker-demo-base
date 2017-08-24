ARG DOCKER_REGISTRY

FROM ${DOCKER_REGISTRY}confluentinc/cp-base

ARG PROJECT_VERSION
ARG ARTIFACT_ID

RUN wget -q https://s3-us-west-2.amazonaws.com/confluent-packages-3.3.0/archive/3.3/confluent-oss-3.3.0-2.11.tar.gz \
    && tar xzvf confluent-oss-3.3.0-2.11.tar.gz --strip-components 1 \
    && rm confluent-oss-3.3.0-2.11.tar.gz
