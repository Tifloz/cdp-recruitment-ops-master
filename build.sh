#!/bin/bash


DOCKER_BUILDKIT=1 docker build . -t tiflo/api-test
kubectl create namespace cdp-recruitment