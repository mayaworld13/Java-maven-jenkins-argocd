#!/usr/bin/bash
kubectl create namespace argocd
kubectl apply -n argocd -f https://lnkd.in/d5KRw3t3
echo "--- inital password for argo cd, user: admin ----"
kubectl -n argocd get secret/argocd-initial-admin-secret -o json | jq .data.password -r | base64 -d
echo ""
echo "ArgoCD server Cluster IP, connect on port 80 or 443"
kubectl -n argocd get svc/argocd-server -o json | jq .spec.clusterIP -r
echo "---"
