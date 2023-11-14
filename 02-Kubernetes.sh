In Master/Cluster.
------------------

After Successfull Minikube Installation of Check the Files are there or not 
ls -l --> kubeconfig ,kubeconfig_ip will be there 
then create one .kube directory --> mkdir .kube
then copy kubeconfig as config to .kube directory

Commands : after minikube install
    ls -l
    mkdir .kube
    cp kubeconfig .kube/config (Configuration about Control Node/ Cluster/ Master)
    kubectl get nodes --> List Down the Nodes (Control Nodes)

In Worker Node(WorkStation)
-----------------------------

Checking The log files for Installation :
    tail -f /var/log/cloud-init-output.log 

Install Kubectl in Worker Node
Create .kube --> mkdir .kube
then add authentication to the .kube config file 

mkdir .kube
cd .kube
vim config



EveryThing In Kubernetes is resources 

Create a Resource with in the Workstation.

NameSpaces: Create and Apply 
    Namespace is the logical isolation between the resources to resources and the host system 
    Logical Isolation of memory,network,filesystem,security etc...

    Create --> it will create the namespace and if already exits it will through an error
    Apply --> It will create the namespace and if already exits it will update the resource

Pods:
    Pod is a smallest deployable file in kubernetes
    pod can contain different specification about conatiners
    pod can conatin multiple conatiners with sharing network,memory,and security
Commands for NameSpaces:
    kubectl get pods 
    kubectl create -f <namespace-file-name> --> When resource not exists this will create the namespcace
    kubectl apply -f <namespace-file-name> --> When resources not exists this will create the resource and if exists it will update the resource
    kubectl get namespaces


Labels : 
    Labels are key-Value pairs that are attached to pods 
    No Special Characters should be used
    Key can have multiple but values should be unique
    Labels are key value pairs with some functionalities and helps to filtering the pod
    Labels are attached that intended to do specify identifying the attributes that are relevenat to user and objects
    That does not directly imply semantics to the core system of pods

Annotations:
    Annotations are attached to the pods as arbitrary non identifying objects 
    annotations are also same like lables but labels have fixed( Minimal Length ) length but annotations cannot have fixed length in Annotations we can use links as values to download the resources but not in labels
    Annotations can use special characters inside keys and values

Resources:
    Requests --> Soft Set
    Limits --> Hard Set 

Config-Map --> The secrets stored as key value pair.

Secrets --> The Storing of username and password

Image Pull Policy:
    The imagePullPolicy for a container and the tag of the image affect when the kubelet attempts to pull (download) the specified image.

Resources Management:
    resources --> Like CPU,Memory,etc..
    Requests --> CPU,Memory
    Limits --> Memory

Kubernetes Services:
    To access the pods from internet we need some kind of services that services
    Service is a method of exposing the application to the external world 

There are 3 Types of Services in Kubernetes :
    ClusterIP
    NodePort
    LoadBalancer --> Only For Cloud Related Containers

ClusterIP:
    The pod which is exposed to get the ipadress for the pod is called ClusterIP
    It is Exposed to only ClusterIP
    To Expose your application to world 
    Service Mesh --> The IP Address for the cluster IP is changed everytime but the name of the clusterip will not change that name is called Service Mesh.
    To Balance the load --> Deployment and ReplicaSet

NodePort:
    NodePort is the next level for ClusterIP
    In Node Port the cluster will connect with the nodes equally to each when the user hits the ip the ip will make to connect one node then that node request api call will go to the cluster ip where the port is connected

    User --> NodePort --> Node 1/Node 2/Node 3 --> ClusterIP --> Pod --> Containers

LoadBalancer:
    where the load is distributed based on the traffic incoming requests 
    user --> Route53 --> LoadBalancer --> Nodes (1- etc..) --> ClusterIP --> Pods --> Containers

Sets: To deploy an application we need to make the set of pods because there is no manual intervention should happen to create the multiple containers when the user request has received heavily to the application
 There are 4 Types of SETS Available:
    1) ReplicaSet
    2) Deployment
    3) Daemon Set
    4) Stateful Set

ReplicaSet:
    Replicaset is the maintainer of the file to create pods/ run the containers inside the pod atleast one for the high availability 
    when we delete the pod the replica set will create the pod automatically for high availability
    Once Pod is created with replicaset if we change the image or configuration / volumes for the container if we build again pod it will not update anything 
    once the pod created with replicaset we cannot update 

    this is disadvantage for Replicaset --> Hence we Developed Deployment

Deployment Set:
    if we need to update anything in the pods even configuration files also we need to develop deployment set manifest file
    
Objects in Kubernetes: There are 11 Types of Objects in Kubernetes:
https://kodekloud.com/blog/kubernetes-objects/#11-types-of-objects-in-kubernetes

    1. Pods
    2. Deployment
    3. ReplicaSets
    4. StatefulSet
    5. DaemonSets
    6. PersistentVolume
    7. Service
    8. Namespaces
    9. ConfigMaps
    10. Secrets
    11. Job



