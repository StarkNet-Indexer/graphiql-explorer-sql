#!/usr/bin/env bash

echo namespace=$namespace

kubectl exec --namespace $namespace -it data-nginx -- rm -rf data/console && \
kubectl cp --namespace $namespace build data-nginx:/data/console

kubectl exec --namespace $namespace -it data-nginx -- ls -la data/console