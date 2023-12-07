Kubernetes Architecture -->
    AutoScaling
    AutoHealing
    Enterprise Level Standard
    Single Host

There are two parts in Kubernetes:

Control Plane $(Master Node) and Data Plane $(Worker Node)

Data Plane:
  Container/Pod Run Time : To run any container we need container run time environment that is dockershim

  KubeProxy:
        In docker is docker0/default networking is called the bridge networking where it is required to runn the container
        KubeProxy is responsible for networing ,ipaddress, loadbalancing capabilities for worker node uses iptables .
        
  Kublet: 
        in docker there is docker daemon to manage the containersbut in Kubernetes 
        Kublet is Responsible for running/managing/maintaining the pod 

Master Node (Control Plane):

We just give the commands to run pod but its api server responsibility to manage the pod where it should run 

API Server:
    is responsible for in which node the pod should deploy based on the scheduler
    it is heart of Control Plane
    responsible for managing the pods and sends the requests to scheduler

Scheduler:
    Scheduler is responsible for which node is empty and send the pod to that node
    Scheduler schedules the pods to go to nodes

etcd:
    data store where it stores all clluster related information in key-value pair
    The backup of all cluster related information which stores everything in the form of key-value pair 

Controller Manager:
    Controls everything like autoscaling,autohealing etc..

Cloud Controller Manager:
    Controls Cloud Services realted to kubernetes
    ELS and AKS 

Kubernetes Monitoring With Prometheus Graphana :
    Why You need Monitoring?
    What is Prometheus and Graphana?
    
Why Aspect?
    
