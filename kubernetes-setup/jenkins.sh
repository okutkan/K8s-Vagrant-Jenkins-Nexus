# jenkins
helm repo add jenkins https://charts.jenkins.io
helm repo update
#helm install jenkins jenkins/jenkins  -n jenkins
helm install jenkins -n jenkins -f jenkins/jenkins-values.yaml jenkins/jenkins 