action=$1

kubectl $action -f nwvol.yaml -n nw-ns
kubectl $action -f nwdb.yaml -n nw-ns
kubectl $action -f nwapp.yaml -n nw-ns
