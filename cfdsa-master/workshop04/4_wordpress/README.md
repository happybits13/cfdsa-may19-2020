wordpresssapp
use mysql operator database
ingress

bonus
nfs: helm install nfs, then claim the pvc





namespace used: wpapp

Install mysql-operator
--------------------------------------------
helm repo add presslabs https://presslabs.github.io/charts
helm repo update
helm install mysql-operator presslabs/mysql-operator --version 0.4.0-rc.1 -n mysql-operator

// kubectl get all -n mysql-operator     --- operator is managing the sql "database admin"

kubectl apply -f <crd file> -n <namespace-name>   --- 3 services generated. 1 master, 1 service replica, 1 service mysql cluster

// kubectl get mysql -n <namespace-name>


Install nginx-ingress
--------------------------------------------------------------------
helm repo add stable https://kubernetes-charts.storage.googleapis.com    // add this repo to install nginx-ingress
helm repo update
helm install <release-name> stable/nginx-ingress --version 1.37.0 -n nginx-ingress      // installs nginx-ingress using helm package manager


view nginx-ingress ip
-------------------------------
kubectl get all -n nginx-ingress
