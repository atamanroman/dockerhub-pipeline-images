#!/bin/bash

docker run --rm ${DOCKER_IMAGE}:${TAG} docker --version
docker run --rm ${DOCKER_IMAGE}:${TAG} ansible --version
docker run --rm ${DOCKER_IMAGE}:${TAG} helm version -c
docker run --rm ${DOCKER_IMAGE}:${TAG} helm-wrapper version -c
docker run --rm -e HELM_HOST=localhost ${DOCKER_IMAGE}:${TAG} helm diff -h
docker run --rm ${DOCKER_IMAGE}:${TAG} helm push -h
docker run --rm ${DOCKER_IMAGE}:${TAG} helm secrets -h
docker run --rm ${DOCKER_IMAGE}:${TAG} helm tiller -h
docker run --rm -eHELM_TILLER_SILENT=false ${DOCKER_IMAGE}:${TAG} helm tiller run helm version
docker run --rm ${DOCKER_IMAGE}:${TAG} skopeo -v
docker run --rm ${DOCKER_IMAGE}:${TAG} gpg --list-keys
docker run --rm ${DOCKER_IMAGE}:${TAG} sops -v
docker run --rm ${DOCKER_IMAGE}:${TAG} gpg-preset-passphrase -h
