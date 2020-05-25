action=$1

kubectl $action -f nwdb.yaml -n nw-ns
kubectl $action -f nwapp-ing.yaml -n nw-ns
kubectl $action -f nwapp.yaml -n nw-ns
