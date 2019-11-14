

# Install	istio Customer Resource Definitions
for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done

# Copy externalIPs of istio ingressgateway.
"clusterIP": "xxx.xxx.xxx.xxx",
"type": "LoadBalancer",
"externalIPs": [
  "xxx.xxx.xxx.xxx"
],
"sessionAffinity": "None",
"externalTrafficPolicy": "Cluster"

# Show External IP of istio's ingressgateway
kubectl get svc -n istio-system istio-ingressgateway -o wide
