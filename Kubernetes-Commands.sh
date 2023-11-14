kubectl create -f <Resource file name>  --> Give error if already exits
kubectl apply -f <Resource file name> --> Update if already exists

kubectl get pods -n <namespace file> --> Gives the name space
kubectl get pods --> List the running pods
kubectl get pods -A --> List down all the pods even closed

To Go Inside the Pod :
  kubectl exec -it <pod-name> -- bash
  kubectl exec -it <pod-name> -n <namespace name> -- bash
  curl localhost --> to check the file 

To delete the resouces :
  kubectl delete <podname> -n <namespace name>

TO decribe the pods :
  kubectl decribe pod <pod-name>

To describe the config map 
  kubectl describe  <pod-name> configmap <config-map-name> 

To Get the service
  kubectl get service

After Deploying the MultiContainer pod To access the multi-containers the command used 

kubectl exec -it <pod-name> -c <second-container-name> -- bash

To watch Kubectl pods command is: --> watch kubectl pods





Load Balancers : --> Types of load Balancers
  Application Load Balancers
  Proxy Network Load Balancers
  Passthrough network load balancers


#Object InKubernetes:
Pod
Service
ReplicationController
ReplicaSet
DaemonSet
Namespace
ConfigMap 

apiVersion: v1
kind: Objects Above Listed
metadata:
  name: give the object name
  
