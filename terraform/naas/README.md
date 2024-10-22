## Overview

This is a reference design and implementation of an environment template that can be implemented by platform teams to provide a "self-service" experience for developers to request and access a "Kubernetes Namespace" on a shared, host Cluster. The namespace will be secured by a network policy which denies all ingress and egress traffic.  In addition to the environment requestor having access to the namespace, an additional collaborator can be added to the namespace during environment creation.

![Architecture](architecture.png)

## Assumption and Requirements
1. You have an existing managed kubernetes cluster in Rafay Kubernetes Manager
2. You have access to a Mac or Linux machine
3. You have a Git client on your machine that is setup for push/pull
4. You have Docker installed on your machine

[Learn](https://docs.rafay.co/refarch/mt/naas/overview/) more about this template. 

## Contributing
This is authored by Rafay Solution Architects. We encourage and welcome contributions from the user community. If you have enhancements that you would like to share, please contact us. 
