kubectl create -f <namespace file name>  --> Give error if already exits
kubectl apply -f <namespace file name> --> Update if already exists






kubectl get pods --> List the running pods
kubectl get pods -A --> List down all the pods even closed
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
  
