# Kubernetes on GCP

## Get credentials

```bash
gcloud auth login

gcloud container clusters get-credentials example --zone=us-central1-c
``` 

## Repositories
``` 
helm repo add bitnami https://charts.bitnami.com/bitnami

helm repo add stable https://kubernetes-charts.storage.googleapis.com
```

## Grafana chart

### Add Repository and pull chart
```bash
helm pull stable/grafana

kubectl get secret --namespace default grafana-1596576839 -o jsonpath="{.data.admin-password}"
```

### Install from chart
```bash
helm install grafana .
```

## Keycloak chart

### Add Repository and pull chart
```bash
helm repo add stable https://codecentric.github.io/helm-charts
helm pull stable/keycloak
```

### Install from chart
```bash
helm install keycloak .
```