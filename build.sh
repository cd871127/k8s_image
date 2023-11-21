#!/usr/bin/env bash
set -ex
APP_NAME=spyder
VERSION=v2.0.4
#minikube image build -t cd871127/dictionary:"$(date +%Y%m%d%H%M%S)" -t cd871127/dictionary:tmp .
sudo nerdctl build --namespace k8s.io --build-arg APP_NAME=$APP_NAME --no-cache -t '192.168.2.222:30005'/cd871127/spyder:$VERSION .
sudo nerdctl --insecure-registry login http://192.168.2.222:30005 -u admin -p 'Harbor12345'
sudo nerdctl push --insecure-registry '192.168.2.222:30005'/cd871127/spyder:$VERSION