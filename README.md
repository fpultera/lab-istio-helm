sh argocd/argocd-install.sh

minikube tunnel -p lab-istio

kubectl apply -f argocd/apps-argocd/nginx-install.yaml

kubectl apply -f argocd/apps-argocd/hola-php.yaml

kubectl apply -f argocd/apps-argocd/hola-php-v2.yaml

kubectl apply -f argocd/apps-argocd/varnish.yaml

kubectl get svc -n ingress-nginx ingress-nginx-controller

vi /etc/host
IP-DEL-INGRESS hola-apps.local hola-apps-v2.local hola-varnish.local

curl hola-apps.local

curl hola-apps-v2.local

curl -I hola-varnish.local -> backend al hola-apps
