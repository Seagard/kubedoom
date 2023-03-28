#!zsh
brew install minikube kubectl hyperkit helm fluxcd/tap/flux ripgrep k9s 

helm registry login registry1.dso.mil \
-u $(security find-generic-password -s registry1.dso.mil |rg '.*acc.*"(.*)"$' -r '$1') \
-p $(security find-generic-password -s registry1.dso.mil -w)

minikube start --driver=hyperkit 
