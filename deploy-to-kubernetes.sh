#!/bin/bash

# in this project I deployed the app to minikube cluster so I begin with insatlling and starting it

kubectl create -f deployment.yaml

kubectl expose deployment goapp \
	--type=NodePort \
	--name=goapp-svc \
	--target-port=3002

minikube_ip=$(minikube ip)	
target_port=$(kubectl get svc goapp-svc -o json | jq .spec.ports[].nodePort)

echo "See web application at: http://${minikube_ip}:${target_port}"

