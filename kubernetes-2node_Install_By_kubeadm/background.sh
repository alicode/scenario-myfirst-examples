#!/bin/bash

set -x # to test stderr output in /var/log/killercoda
echo starting... # to test stdout output in /var/log/killercoda
kubeadm reset --force
rm -rf /etc/cni/net.d/*
ip link delete  flannel.1
apt remove -y  kubeadm kubectl kubelet kubernetes-cni

ssh node01  'kubeadm reset --force'
ssh node01  'rm -rf /etc/cni/net.d/*'
ssh node01  'ip link delete  flannel.1'
ssh node01 'apt remove -y  kubeadm kubectl kubelet kubernetes-cni'
