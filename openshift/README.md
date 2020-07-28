# openshift

## Management
```bash
terraform apply -var-file=variables.tfvars

terraform plan -var-file=variables.tfvars

terraform plan -var-file=variables.tfvars
```

## Node names
```bash
openshift-compute-0
openshift-compute-1
..
openshift-compute-n

openshift-infra-0
openshift-infra-1
(...)
openshift-infra-n

openshift-master-0
openshift-master-1
(...)
openshift-master-n
```

## Deploy ssh keys if required
```bash
ssh-keygen

HOST_LIST="openshift-compute-0 openshift-compute-1 openshift-infra-0 openshift-master-0 openshift-master-1"

for i in $HOST_LIST ; do 
  ssh-copy-id -i ~/.ssh/id_rsa.pub $i;
done
```

## Prepare network
```bash
sudo -i rm -f /etc/resolv.conf
sudo -i rm -f /etc/NetworkManager/NetworkManager.conf

sudo -i tee /etc/resolv.conf <<"EndOfMessage"
search linuxpolska.localdomain
nameserver 169.254.169.254
EndOfMessage

sudo -i tee /etc/NetworkManager/NetworkManager.conf <<"EndOfMessage"
[main]
dns=none
[logging]
EndOfMessage

sudo -i systemctl restart NetworkManager
sudo -i systemctl restart network

clear

cat /etc/NetworkManager/NetworkManager.conf
cat /etc/resolv.conf
```

## invenfory.cfg

```bash
cat > inventory.ini << "EndOfMessage"
[OSEv3:children]
masters
nodes
etcd

[OSEv3:vars]
ansible_ssh_user=ansible
ansible_become=true
openshift_master_default_subdomain=linuxpolska.localdomain
deployment_type=origin

[nodes:vars]
openshift_disable_check=disk_availability,memory_availability,docker_storage

[masters:vars]
openshift_disable_check=disk_availability,memory_availability,docker_storage
openshift_master_identity_providers=[{'name': 'htpasswd_auth', 'login': 'true', 'challenge': 'true', 'kind': 'HTPasswdPasswordIdentityProvider'}]

[masters]
openshift-master-0.linuxpolska.localdomain

[etcd]
openshift-master-[0:1].linuxpolska.localdomain

[nodes]
openshift-master-[0:1].linuxpolska.localdomain  openshift_node_group_name='node-config-master'
openshift-compute-[0:1].linuxpolska.localdomain openshift_node_group_name='node-config-compute'
openshift-infra-0.linuxpolska.localdomain       openshift_node_group_name='node-config-infra'
EndOfMessage
```

## Deploy OpenShift

```bash
ansible-playbook -i inventory.ini openshift-ansible/playbooks/prerequisites.yml
ansible-playbook -i inventory.ini openshift-ansible/playbooks/deploy_cluster.yml
```