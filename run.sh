#!/usr/bin/env bash
helm repo add onedata https://onedata.github.io/charts/
helm repo update
helm search onedata-stress

helm delete --purge onedata-stress-suite

helm upgrade -i \
  -f config/environment.yaml \
  -f config/suite.yaml \
  --namespace release18020-rc11 \
  onedata-stress-suite \
  onedata/onedata-stress-suite