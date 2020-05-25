action=$1

#helm install nginx-ingress stable/nginx-ingress --version 1.37.0 -n nginx-ingress -f values.yaml

if [ $action == "apply" ];
then
	kubectl apply -f nwvol.yaml -n nw-ns
	kubectl apply -f nwdb.yaml -n nw-ns
	kubectl apply -f nwapp-ing.yaml -n nw-ns
	kubectl apply -f nwapp.yaml -n nw-ns
elif [ $action == "delete" ];
then
	kubectl delete -f nwapp.yaml -n nw-ns
	kubectl delete -f nwapp-ing.yaml -n nw-ns
	kubectl delete -f nwdb.yaml -n nw-ns
	kubectl delete -f nwvol.yaml -n nw-ns
else
	echo "invalid parameter"
fi

