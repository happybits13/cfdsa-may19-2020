action=$1

kubectl $action -f fortunapp.yaml -n fortune-ns
kubectl $action -f nwdb.yaml -n nw-ns
kubectl $action -f nwapp.yaml -n nw-ns
