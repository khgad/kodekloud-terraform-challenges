# install terraform version: 1.1.5 on on controlplane

wget https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_linux_amd64.zip

sudo apt install unzip

unzip terraform_1.1.5_linux_amd64.zip

chmod +x terraform

sudo mv terraform /usr/local/bin/