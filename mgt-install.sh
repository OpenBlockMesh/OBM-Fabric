# Kubernetes Install Script for Managament Functions
# Date : 27-07-2016
# Version 0.1
# Author : James Buckett (james.buckett@au1.ibm.com)
# Commissioned by ANZ Bank under direction of Ben Smillie (Ben.Smillie@anz.com)

#!/bin/bash -x

clear

echo "Create management namespace"
kubectl create -f ns-mgt.yml
sleep 5

echo "Installing Management Services"
kubectl create -f svc-mgt-prometheus.yml
sleep 5
kubectl get --namespace=management services

echo "Installing Prometheus"
kubectl create -f dep-mgt-prometheus.yml
sleep 5
kubectl get --namespace=management services
kubectl get --namespace=management pods 
kubectl get --namespace=management replicasets

echo "Done"
