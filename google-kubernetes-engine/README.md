# Kubernetes on GCP

## Get credentials

```bash
gcloud auth login

gcloud container clusters get-credentials example --zone=us-central1-c

helm repo add stable https://kubernetes-charts.storage.googleapis.com
``` 

## 
```bash
helm install stable/grafana --generate-name

kubectl get secret --namespace default grafana-1596576839 -o jsonpath="{.data.admin-password}"
```