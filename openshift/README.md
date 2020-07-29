# OpenShift 3.9 - 3.11

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

## Prepare network on nodes (just on first run)
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

## Ansible `inventory.ini` 3.11

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
openshift-master-0.linuxpolska.localdomain

[nodes]
openshift-master-0.linuxpolska.localdomain  openshift_node_group_name='node-config-master'
openshift-compute-0.linuxpolska.localdomain openshift_node_group_name='node-config-compute'
openshift-infra-0.linuxpolska.localdomain   openshift_node_group_name='node-config-infra'
EndOfMessage
```

## Ansible `inventory.ini` Openshift 3.9

```bash
[masters]
openshift-master-0.linuxpolska.localdomain

[etcd]
openshift-master-0.linuxpolska.localdomain

[nodes]
openshift-master-0.linuxpolska.localdomain      openshift_check_min_host_disk_gb=1 openshift_check_min_host_memory_gb=1
openshift-infra-0.linuxpolska.localdomain       openshift_node_labels="{'region': 'infra', 'zone': 'default'}"          openshift_check_min_host_disk_gb=1 openshift_check_min_host_memory_gb=1
openshift-compute-0.linuxpolska.localdomain     openshift_node_labels="{'region': 'primary', 'zone': 'default'}"        openshift_check_min_host_disk_gb=1 openshift_check_min_host_memory_gb=1

[OSEv3:children]
masters
nodes
etcd
yes
[OSEv3:vars]
ansible_user=ansible
openshift_deployment_type=origin
ansible_become=true
openshift_release=v3.9
openshift_master_default_subdomain=linuxpolska.localdomain
openshift_master_cluster_hostname=openshift-master-0.linuxpolska.localdomain
debug_level=2
template_service_broker_selector={'region': 'infra'}
```

#### If required ommit some checks

```bash
openshift_check_min_host_disk_gb=1 openshift_check_min_host_memory_gb=1
```

## OpenShift ansible playbooks

#### Install
```bash
ansible-playbook -i inventory.ini openshift-ansible/playbooks/prerequisites.yml
ansible-playbook -i inventory.ini openshift-ansible/playbooks/deploy_cluster.yml
```

### Uninstall
```bash
ansible-playbook -i inventory.ini openshift-ansible/playbooks/adhoc/uninstall.yml
```

### Last steps
```bash
htpasswd -c /etc/origin/master/htpasswd admin
```

## Diagnostics

#### Get pods which status is not Running
```bash
for i in `oc get ns | tail -n +2 | awk '{print $1}'` ; do 
  echo "Namespace: $i"
  oc get pods -n $i 2>/dev/null | tail -n +2 | awk '$3!="Running" {print $1,$3}' 
  echo
done
```

#### Get resources

NAMESPACES="default example"
RESOURCES="pods pvc pv sc cm ingress deployments svc"

for i in $NAMESPACES ; do
  echo "Namespace: $i"
  for j in $RESOURCES ; do
    oc get "$j" -n "$i" 
  done
  echo
done

#### login as admin
```bash
oc login -u system:admin -n default
```

#### Pushing docker images

```
oc login
oc whoami -t

docker logout
docker login -u admin -p XXX 172.30.19.100:5000

docker pull grafana/grafana:latest

docker tag docker.io/grafana/grafana 172.30.19.100:5000/example/grafana:latest
docker push 172.30.19.100:5000/example/grafana:latest

oc get is
```

####

```bash
nsenter -t PID -n ip addr

conntrack -L
```

#### Certificates `OpenShift 3.9`


#### Fix certificates per playbook on x509 Error
```bash
redeploy-certificates.yml

openshift-etcd/redeploy-ca.yml

openshift-master/redeploy-certificates.yml
openshift-master/redeploy-openshift-ca.yml
```

#### 
```bash
openshift-node/redeploy-certificates.yml

openshift-hosted/redeploy-registry-certificates.yml
openshift-hosted/redeploy-router-certificates.yml
```