Pods : Kubernetes Pods 
Container vs Pod 
    Pods are the smallest deployable units of computing that you can create and manage in Kubernetes.
    A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing to another computing.
What is Kubectl && Installation
    Kubectl  is the Command line tool for kubernetes like docker cli 

    Kubernetes provides a command line tool for communicating with a Kubernetes clusters control plane, using the Kubernetes API.

Minikube Installation
How to create a Pod ?
    kubectl create -f <podfile.yaml>

How to write your first Pod ?
    it is a yaml structure with apiversions and specifications,networking details and port numbers etc...
    
Advantages of Pods ?
    pods can have specifications one or more than one container.