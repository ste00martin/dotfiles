# Assuming it's a ubuntu box

## Add you public key to the authorized_keys list
PEM_FILE="~/Downloads/chevron-external-sites.pem"
SERVER="ubuntu@54.244.195.245"

PUBLIC_KEY="$(cat ~/.ssh/id_rsa.pub)"
ssh -i "${PEM_FILE}" ${SERVER} "echo ${PUBLIC_KEY} >> ~/.ssh/authorized_keys"

## Install frequently used frameworks
sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm
sudo apt-get install ruby
sudo apt-get install nginx
sudo gem install bundle

