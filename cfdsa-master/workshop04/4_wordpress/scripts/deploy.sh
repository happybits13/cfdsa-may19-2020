action=$1

#helm install nginx-ingress stable/nginx-ingress --version 1.37.0 -n nginx-ingress -f values.yaml

if [ $action == "apply" ];
then
	helm install mysql-operator presslabs/mysql-operator --version 0.4.0-rc.1 -n mysql-operator
	kubectl apply -f wpdb-cluster.yaml -n wpapp
	kubectl apply -f wpapp-ing.yaml -n wpapp
	kubectl apply -f wpapp.yaml -n wpapp
elif [ $action == "delete" ];
then
	helm uninstall mysql-operator presslabs/mysql-operator -n mysql-operator
	kubectl delete -f wpapp.yaml -n wpapp
	kubectl delete -f wpapp-ing.yaml -n wpapp
	kubectl delete -f wpdb-cluster.yaml -n wpapp
else
	echo "invalid parameter"
fi

