Sidecar --- 1 sidecar(container) generated per pod, to sync up with other sidecar from other pods. Sidecar overwrites service in port management

istio takes info from sidecars and produce statistics. Has an ingress as well.


Automatic sidecar injection
--------------------------------
kubectl label ns/<namespace-name> istio-injection=enabled --- enable sidecar automatically (every application installed will get a sidecar)
kubectl label ns/<namespace-name> istio-injection-    --- remove label


Manual sidecar injection (better practice)
-----------------------------------
istioctl kube-inject -f fortune-deploy > test.yaml   --- generate fortune-deploy yaml file with sidecar
kubectl apply -f test.yaml
OR
istioctl kube-inject -f fortune-deploy | kubectl apply -f


---

// kubectl get pod/fortune-deploy-779b4cf74-564lf -o yaml > t.yaml // dumps out the pod info
