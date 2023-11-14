kubectl create -f <Resource file name>  --> Give error if already exits
kubectl apply -f <Resource file name> --> Update if already exists

kubectl get pods -n <namespace file> --> Gives the name space
kubectl get pods --> List the running pods
kubectl get pods -A --> List down all the pods even closed

To Go Inside the Pod :
  kubectl exec -it <pod-name> -n <namespace name> -- bash
  curl localhost --> to check the file 

To delete the resouces :
  kubectl delete <podname> -n <namespace name>

TO decribe the pods :
  kubectl decribe pod <pod-name>
  


Load Balancers 
Types of load Balancers
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
  
