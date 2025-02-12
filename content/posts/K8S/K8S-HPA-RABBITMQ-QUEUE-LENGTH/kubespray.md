---
title: "01-Kubespray"
date: "2025-02-12"
draft: false
series: "K8S HPA RABBITMQ QUEUE LENGTH"
hideToc: false
tags: ["Kubernetes", "K3S"]
---

### Intro
First things first, a new Kubernetes cluster is needed for demonstration.

In this tutorial we are using [K3s](https://k3s.io/) for setting up our single node cluster. You can use [Kubespray](https://github.com/kubernetes-sigs/kubespray) for large scale clusters or [Minikube](https://minikube.sigs.k8s.io/docs/) for simple single node clusters like k3s.

### Deployment
For deploying k3s, simpley run below command:
```
curl -sfL https://get.k3s.io | sh -
```

You can also install specific version with **INSTALL_K3S_VERSION** variable. List of variables are available in script you're running above.

After that run ``` kubectl get nodes ``` to find if cluster is healthy.

![K3S CLUSTER STATUS](https://ahspw.ir/images/k8s/K3S.png)

As you can see, our single node cluster is ready to operate. In Next section, we will deploy RabbitMQ cluster Kubernetes operator so we can use it as our messaging system.
