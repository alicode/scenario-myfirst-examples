## 重新創建 token in controlplane
```
ssh controlplane
kubeadm token create --print-join-command
```

## Join to Controlplane in node01

```
ssh node01
kubeadm join 172.30.1.2:6443 --token XXXXXX --discovery-token-ca-cert-hash ******
```
