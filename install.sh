#!/usr/bin/env bash

kubectl apply -f namespace.yaml

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/ha/install.yaml

kubectl apply -f argocd-cm.yaml

kubectl apply -f rabac-cm.yaml

kubectl apply -f ingress.yaml

kubectl apply -f project.yaml

