curl -sL https://github.com/operator-framework/operator-lifecycle-manager/releases/download/v0.27.0/install.sh | bash -s v0.27.0
kubectl create -f https://operatorhub.io/install/argocd-operator.yaml
kubectl get csv -n operators
kubectl get csv -n argocd
kubectl apply -f argocd-basic.yml
kubectl edit svc example-argocd-server  ## change ClusterIP to NodePort
minikubeip:example-argocd-server port
kubectl get secret
kubectl edit secret example-argocd-cluster ## username is admin and password is given in the file in encoded form with user admin
echo -n password | base64 -d
