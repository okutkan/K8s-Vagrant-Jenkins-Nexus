# jenkins

# # Create a persistent volume
# kubectl apply -f jenkins-volume.yaml

# #Create a service account
# kubectl apply -f jenkins-sa.yaml

# helm repo add jenkins https://charts.jenkins.io
# helm repo update
# #helm install jenkins jenkins/jenkins  -n jenkins
# helm install jenkins -n jenkins -f jenkins-values.yaml jenkins/jenkins 

#Get your 'admin' user password
jsonpath="{.data.jenkins-admin-password}"
secret=$(kubectl get secret -n jenkins jenkins -o jsonpath=$jsonpath)
echo $(echo $secret | base64 --decode)

# Get the Jenkins URL
 jsonpath="{.spec.ports[0].nodePort}"
 NODE_PORT=$(kubectl get -n jenkins -o jsonpath=$jsonpath services jenkins)
 jsonpath="{.items[0].status.addresses[0].address}"
 NODE_IP=$(kubectl get nodes -n jenkins -o jsonpath=$jsonpath)
 echo http://$NODE_IP:$NODE_PORT/login