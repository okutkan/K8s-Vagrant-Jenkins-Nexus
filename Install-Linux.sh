sudo apt update
sudo apt upgrade
sudo apt install virtualbox -y
sudo apt install vagrant -y
vagrant --version
sudo apt-get install ansible -y


#instal helm
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm2
