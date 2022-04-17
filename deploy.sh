#!/bin/bash
echo deploying kubeapi to Kubernetes...

docker compose build
kubectl apply -f deploy.yml
kubectl wait --for=condition=ready pod -l app=kubeapi --timeout=30s
open http://localhost:5002
kubectl port-forward svc/kubeapi 5002:80