action=$1
kubectl $action -f wpapp.yaml -n wpapp
kubectl $action -f wpapp-ing.yaml -n wpapp
kubectl $action -f wpdb-cluster.yaml -n wpapp
