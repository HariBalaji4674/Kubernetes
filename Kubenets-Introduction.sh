Introduction:

Kubernetes is easy
Kubernetes is the future of DevOps
People are moving towards Microservices
Docker Vs Kubernetes

Docker:
Container Platform where it supports the building the containers
    Does not support AutoScaling
    Does not support AutoUpgrades
    Single Host 
    Enterprise Level Management

Containers are ephimeral in nature
Short lived --> container can die and revive anytime
Containers will die if it does not get enough resources
Container will die if it does not support the building the image
Container will have only one host divided the resouces into multiple
Containers are getting effected due to lack of resource allocation between containers


Lets take some one has killed container then to application inside will not work so we need the feature called AutoHealing Capacity 

Lets take we are using the application at festival times or occasion time everyone will use that for offers at that time fixed container will not support that much traffic so we need auto scaling which docker does not support 

Lets take we are using production systems enterprise level building need more
    ELB--> Load Balancers
    Firewalls
    All above features

Disadvantages of Docker:
    AutoHealing Doesnot support
    AutoScaling Doesnot support
    it is single host
    Enterprise Support does not support
    Docker server is Crashed 
    More Traffic Does not support
    Balancing Load Does Not Support
    What about Configs and secrets Management 

Kubernetes : Container Orchestration Platform
    kubernets Supports AutoScaling --> Create more Conatiners
    Kubernetes supports AutoHealing --> Auto restart,reboot.etc..
    Single Host issue will Solve
    Enterprise level Standards

Single Host --> 
    By Default Kubernets is a Cluster 
    Cluster is Group of nodes Master and Slave Node 
    if the container is getting effected by another container kuberntes wll move that effected container in another node

AutoScaling -->
    Replication Controller/Replicaset
    where we will write some yaml instructions to increase pods at specific point of time

AutoHealing -->
    When ever there is a damage kubernetes will control or fix the damage
    When container is going down it should get autoheal then it will create new container

Enterprise Level Standard -->
    Advanced Load Balancing support
    Advanced Security Support
    Load Balancing Support....

Kubernetes Secrets Management-->
    It will store all the secrets in one place either s3 Bucker or ETCd

Docker Swarm vs Kubernetes 
    Kubernetes supporting is better networking ,but Docker swarm is supporting minimal networking
    Kubernetes is a container orchestration system that manages multiple containers. 
    Docker Swarm does not manage any containers but instead is a cluster manager for Docker containers. 
    Kubernetes also has built-in support for stateful applications, whereas Docker Swarm does not.

Kubernetes NameSpaces:
    Isolated Project Spaces 
    In Kubernetes, namespaces provides a mechanism for isolating groups of resources within a single cluster.
    Names of resources need to be unique within a namespace, but not across namespaces. 
    Namespace-based scoping is applicable only for namespaced objects (e.g. Deployments, Services, etc) and not for cluster-wide objects (e.g. StorageClass, Nodes, PersistentVolumes, etc)