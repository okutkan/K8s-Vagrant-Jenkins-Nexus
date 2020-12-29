

#nexus
helm repo add stevehipwell https://stevehipwell.github.io/helm-charts/
helm repo update
#helm upgrade --install --namespace default --values ./my-values.yaml my-release stevehipwell/nexus3
helm install sonatype stevehipwell/nexus3