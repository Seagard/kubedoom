#!bash
minikube start --driver=hyperkit 
export GITHUB_TOKEN=$(security find-internet-password -s github.com -w)
flux bootstrap github --owner=seagard --branch=flux --repository=kubedoom --path=clusters/minikube --personal
