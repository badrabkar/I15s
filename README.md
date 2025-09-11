# I15s

## Description
This project aims to introduce you to Kubernetes from a developer's perspective. You will have to set up small clusters and discover the mechanics of continuous integration. At the end of this project, you will be able to set up a working cluster in Docker and have a usable continuous integration pipeline for your applications.



# Part 1: K3s and Vagrant

- write you Vagrantfile using LTS of the distribution of your choice
- 1 CPU and 512 or 1024 MB of RAM
- VM-1 (server, controller node) ===> hostname: `tbouzalmS` , IP: 192.168.56.110 
- VM-2 (serverworker, agent mode) ===> hostname: `tbouzalmSW` , IP: 192.168.56.111  
- Be able to connect with SSH with no password.
-  You must install k3s on both machines

controller mode
agent mode
server
server worker
k3s


## why orchestrate

you will need multiple instance of your application (multiple instance of containers) and to manage them you will a tool that will manage them (orchestrate them ) which is kubernetes

a container orchestration solution consists of multiple docker hosts that can hosts containers

they are multiple orchestration solutions : `docker Swarm`, `kubernetes`, `mesos`

## Cluster Diagram
![](assets/Pasted%20image%2020250910085957.png)


 **Control Planes :** manage the cluster and the nodes that are used to host the running applications.
 **Node :** is a VM or a physical computer where k8s software is installed (set of tools) that serves as **worker machine** in a k8s cluster. this where the containers will be launched by k8s Each node has a Kubelet.

 **Cluster** : is a set of nodes grouped together if one node fails you have your app accessible in other nodes.

 **Master node** is a node with k8s controll plane components installed, the master watches over the nodes 

>The `Controller Manager` decides what needs to be done (e.g., "we need 5 pods"), and the `Kubelet` on each node is the one that actually does the work of

 when installing k8s on a system you are installing the following components : 
 - API server acts as the frontend for k8s. The users , mangement devices, command line interfaces all talks to it to interact with the cluster 
 - etcd server its a key value store that stores all the data used to manage the cluster
 - kubelet service
 - Container runtime (engine like docker)
 - Controller are responsible for creating containers if a containers goes does 
 - Scheduler is responsible for distribution work or containers accross multiple nodes , it looks for newly created containers and assignes them to nodes 
 
 **Kubelet :** an agent for managing the node and communicating with k8s control place


**kubectl** : is the k8s cli used to deploy and manage apps on the cluster 
- `kubectl run ` used to deploy an app  on the cluster
- `kubectl cluster-info` view info about the cluster
- `kubectl get nodes` list all the nodes part of the cluster  


k8s can upgrade instances in a rolling fashion one at a time  and if a problem accurs you can roll back 
**Vagrant** : A tool developed by HashiCorp that automate the provisioning of  developer environment (virtual machines, containers etc...)


## Vagrant Architecture

![](assets/Pasted%20image%2020250910081120.png)

**Vagrantfile** : Configuration file that specifies how a vm should be setup

`vagrant ssh-config` : display all the ssh details like username, key file location etc...
`vagrant halt`: Stops the virtual machine by delivering a shutdown signal to the guest operating system. This command is similar to shutting down a real computer.
Changed scripts → `vagrant provision`

Changed resources/network → `vagrant reload`

Changed box or want a clean state → `vagrant destroy && vagrant up`
## References

[Vagrant Tutorial For Beginners: Getting Started Guide](https://devopscube.com/vagrant-tutorial-beginners/)



