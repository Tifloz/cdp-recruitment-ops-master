#!/bin/bash

RESULT=$?
kubectl create -f pod.yaml
if [ $RESULT -eq 0 ]; then
  echo "Successfully created pod"
else
  kubectl delete -f pod.yaml && kubectl create -f pod.yaml
fi

minikube service -n cdp-recruitment api-test --url