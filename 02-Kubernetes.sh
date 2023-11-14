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
    
    
Image Pull Policy:
    The imagePullPolicy for a container and the tag of the image affect when the kubelet attempts to pull (download) the specified image.

Resources Management:
    resources --> Like CPU,Memory,etc..
    Requests -->
    Limits -->
    

