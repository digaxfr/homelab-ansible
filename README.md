# homelab-ansible

Ansible and scripts for homelab. This is where general purpose roles will go such as deploying Kubernetes, PiHole,
Wireguard, etc.

## Kubernetes

First pass is done. A lot left to do:

* Calico is actually still broken
* Fix the manual changes I did in dnsmasq (extra records added)
* Write defensive health checks
* Simulate day-2 operations/workflows
* Provide my own CA and certs for kube-apiserver
* Setup ingress
* Setup monitoring, kube-state-metrics, metrics-server, prometheus, grafana, etc.
