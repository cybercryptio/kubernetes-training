#!/bin/sh

helm install rancher rancher --repo https://releases.rancher.com/server-charts/stable \
  --namespace cattle-system \
  --create-namespace \
  --set hostname=rancher.k8s.cyber-crypt.com \
  --set replicas=3 \
  --set ingress.tls.source=letsEncrypt \
  --set letsEncrypt.email=letsencrypt@cyber-crypt.com \
  --set letsEncrypt.ingress.class=nginx
