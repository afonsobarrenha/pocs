# Kubernetes

## Comandos

```
minikube start
minikube dashboard
kubectl get pods
kubectl get rc
kubectl get services
kubectl get services --watch
kubectl describe pods | grep IP
kubectl exec -it statefulset-mysql-0 sh
kubectl create -f statefulset.yaml && 
    kubectl create -f permissoes.yaml && 
    kubectl create -f servico-banco.yaml && 
    kubectl create -f demo-deployment.yaml && 
    kubectl create -f demo-service.yaml
kubectl create -f mysql-permission.yaml && 
    kubectl create -f mysql-statefulset.yaml && 
    kubectl create -f mysql-service.yaml && 
    kubectl create -f springboot-deployment.yaml && 
    kubectl create -f springboot-service.yaml &&
    minikube service springboot-service --url
kubectl delete service --all &&
    kubectl delete persistentvolumes --all &&
    kubectl delete persistentvolumeclaims --all &&
    kubectl delete pods --all &&
    kubectl delete deployments --all &&
    kubectl delete statefulsets --all
minikube stop
```

## Comandos Google Cloud SDK

```
gcloud container clusters get-credentials springboot-cluster-1 --zone southamerica-east1-c --project springboot-202401
gcloud init
gcloud auth list
gcloud config list
kubectl config get-contexts
kubectl scale deployment springboot-deployment --replicas=3
```