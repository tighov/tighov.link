Title: Kubernetes Basics
Slug: k8s-basics
Date: 2019-11-23 19:15
Tags: cloud, k8s
Category: Software, Cloud
Summary: In this blog post we learn how to provision a Kubernetes cluster using Google Kubernetes Engine.
Status: draft
Header_Cover: images/posts/k8s-basics/cover.png

In this blog post we learn how to provision a Kubernetes cluster using Google Kubernetes Engine and deploy and manage Docker containers using kubectl.

### Setup

**Make sure the following APIs are enabled in Cloud Platform Console**

* Kubernetes Engine API
* Container Registry API

On the Navigation menu, click `APIs & services`.

Scroll down and confirm that your APIs are enabled.

If an API is missing, click `ENABLE APIS AND SERVICES` at the top, search for the API by name, and enable it for your project.

**Activate Google Cloud Shell**

In GCP console, on the top right toolbar, click the `Open Cloud Shell` button.

In the dialog box that opens, click `Start Cloud Shell`:

It takes a few moments to provision and connect to the environment. When you are connected, you are already authenticated, and the project is set to your `PROJECT_ID`. For example:

**List the active account name**

```sh
gcloud auth list
```

**List the project ID**

```sh
gcloud config list project
```

### Start a Kubernetes cluster

**Define your zone as a project default zone**

This way you do not need to specify `--zone` parameter in gcloud commands.

```sh
gcloud config set compute/zone us-central1-a
```

In Cloud Shell, run the following command to start a Kubernetes cluster called bootcamp that runs 5 nodes.

```sh
gcloud container clusters create bootcamp --num-nodes 5 --scopes "https://www.googleapis.com/auth/projecthosting,storage-rw"
```

The scopes argument provides access to project hosting and Google Cloud Storage APIs that you'll use later.

It takes several minutes to create a cluster as Kubernetes Engine provisions virtual machines for you. It spins up one or more master nodes and multiple configured worker nodes. This is one of the advantages of a managed service.

**Check your installed version of Kubernetes**

```sh
kubectl version
```

The `gcloud container clusters create` command automatically authenticated kubectl for you.

**Find out more about the cluster**

```sh
kubectl cluster-info
```

**Bash Completion (Optional)**

Kubernetes comes with auto-completion. You can use the kubectl completion command and the built-in source command to set this up.

Run this command.

```sh
source <(kubectl completion bash)
```

Press Tab to display a list of available commands.

Try the following examples:

```sh
kubectl <TAB><TAB>
```

You can also complete a partial command.

```sh
kubectl co<TAB><TAB>
```

This feature makes using kubectl even easier.

Run and deploy a container

### Get started with Kubernetes

**Use kubectl run to launch a single instance of the nginx container**

```sh
kubectl run nginx --image=nginx:1.10.0
```

In Kubernetes, all containers run in pods. And in this command, Kubernetes created what is called a deployment behind the scenes, and runs a single pod with the nginx container in it. A deployment keeps a given number of pods up and running even when the nodes they run on fail. In this case, you run the default number of pods, which is 1.

**View the pod running the nginx container**

```sh
kubectl get pods
```

**Expose the nginx container outside Kubernetes**

```sh
kubectl expose deployment nginx --port 80 --type LoadBalancer
```

Kubernetes created a service and an external load balancer with a public IP address attached to it (you will learn about services later). The IP address remains the same for the life of the service. Any client who hits that public IP address (for example an end user or another container) is routed to pods behind the service. In this case, that would be the nginx pod.

**View the new service**

```sh
kubectl get services
```

You'll see an external IP that you can use to test and contact the nginx container remotely.

It may take a few seconds before the ExternalIP field is populated for your service. This is normal—just re-run the kubectl get services command every few seconds until the field is populated.

**Scale up the number of backend applications (pods) running on your service**

```sh
kubectl scale deployment nginx --replicas 3
```

This is useful when you want to increase workload for a web application that is becoming more popular.

**Get the pods one more time to confirm that Kubernetes has updated the number of pods**

```sh
kubectl get pods
```

**Use the kubectl get services command again to confirm that your external IP address has not changed**

```sh
kubectl get services
```

**Use the external IP address with the curl command to test your demo application**

```sh
curl http://<External IP>:80
```

Kubernetes supports an easy-to-use workflow out of the box using the kubectl run, expose, and scale commands.

### Clean Up

**Clean up nginx**

```sh
kubectl delete deployment nginx
kubectl delete service nginx
```
