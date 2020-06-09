region = "us-central1"
zone = "us-central1-a"

name = "elasticsearch"

image = "ubuntu-os-cloud/ubuntu-1804-lts"

apt_install_apache2 = <<EndOfMessage
sudo killall apt apt-get
sudo dpkg --configure -a
sudo apt-get update
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2
EndOfMessage

network = "network"

terraform_user = "terraform"

terraform_ssh_keys_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClIqY2ukU+vVw+ZYMcbRFtmgbpXFL9TV0yr8F7mBnBN/bevqOWpsdn6ePqU0yC9uIcU1sYfRuwPYqgvtnGSfj8WteysOblUuwsU1CGq4s5cunmvFM2dvNMZJILpw/k843Z4uC24pIbVJE7G1FoRrnj9/CN9GhdwaJxN42F8cfOHw==
EndOfMessage

ansible_user = "ansible"

ansible_ssh_keys_pub = <<EndOfMessage
ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCi8wHVecPaj12wH4gSUoUBs8wP+skNRKvx1N5S7MKFRu8bt4plAKKKS2HzFtOSECsXycQ2q5LVUQCMwWklBYiW9uhAE0g22QPQq/Oseu70q/liUdFIHuRXKC8HI3wRCNKxKvvml0RcMSciSNK5knUbyoGEvB13tQrKTSHiYX+seQ==
EndOfMessage
