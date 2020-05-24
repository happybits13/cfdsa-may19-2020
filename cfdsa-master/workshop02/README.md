Commands to try in this dir
----------------------
kubectl port-forward <resource-type>/<resource-name> <localhost-port>:<resource-port> [-n <namespace>]

Maps your localhost port to the resource's port(also forward you to the resource's IP, even if its remote).
localhost:port -> resource-ip:port 




Some basic useful commmands
-------------------------------
kubectl create <resource-type> <resource name>                            ---  resource-type: namespace,pods,deployment,service,ingress,hpa,nodes
kubectl delete <resource-type> <resource name>
kubectl get <resource-type> <resource name>                               --- get info on resource
kubectl get all <resouce-type> [-n <namespace name>] [-o wide]            --- get all info of a resource [in a namespace]
kubectl describe <resource-type> <resource name> [-n <namespace name>]    --- get detailed info on resource (useful for debugging)
kubectl logs <resource-type> <resource name>                              --- get logs of resource (useful for debugging)
kubectl apply -f *.yaml [-n <namespace name>] [--record]                  --- apply yaml file instruction to set up a cluster
kubectl delete -f *.yaml [-n <namespace name>]

kubectl port-forward <resource-type>/<resource-name> <localhost-port>:<resource-port>  --- maps localhost port to resource port. Seems to forward IP based on kube config file too



kubectl api-resources
kubectl top nodes
kubectl set image deployment/<deployment-name> <container-name>=<new image name> --- container name from your container section in *.yaml file
kubectl scale <deployment> <deployment-name> --replicas=<no>             
kubectl who-can create <resource-type> -n <namespace-name>

kubectl rollout <resource-type></resoure-name>        --- if you --record, willl show rollout history
kubectl rollout undo deployment/<deployment name> --to-revision=<revision-no>   -- undo rollouts and rollback
kubectl rollout status deployment/<deployment name>

*always set your KUBECONFIG*


Best practices
------------------------
- Define namespace from cmd. Unless very sure you going use that namespace
- Seperate config, secret, ingress to another file




For conceptual knowledge, go read from google drive doc(CLDSA).
