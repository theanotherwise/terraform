# OpenShift 3.9 - 3.11

## Terraform management
```bash
terraform apply -var-file=variables.tfvars

terraform plan -var-file=variables.tfvars

terraform plan -var-file=variables.tfvars
```

## OpenShift repository
```
git clone https://github.com/openshift/openshift-ansible.git

git branch -a

git checkout release-3.11 # for 3.11
# git checkout release-3.9 # for 3.9
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

## Access to Openshift
```bash
ssh-add terraform.id_rsa

ssh -A -i terraform.id_rsa terraform@34.66.62.74
```

## Disable `systemd-resolved` on Bastion
```bash
sudo -i systemctl disable systemd-resolved
sudo -i systemctl stop systemd-resolved

sudo -i rm /etc/resolv.conf

sudo -i tee /etc/resolv.conf <<"EndOfMessage"
search local
nameserver 169.254.169.254
EndOfMessage
```

## Access to `OpenShift` nodes
```bash
ssh ansible@openshift-XXX-n.local
```

## Deploy ssh keys if required
```bash
ssh-keygen

HOST_LIST="openshift-compute-0 openshift-compute-1 openshift-infra-0 openshift-master-0 openshift-master-1"

for i in $HOST_LIST ; do 
  ssh-copy-id -i ~/.ssh/id_rsa.pub $i;
done
```

## Install ansible 

### Openshift `3.9` on CentOS 7
```
yum install ansible 
```

### Openshift `3.11` on Ubuntu 18 LTS from `apt`
```bash
apt-get update
apt-get install -y ansible 
```

### Openshift `3.11` on Ubuntu 18 LTS from `pip` - latest version
```bash
apt-get update
apt-get install -y python3-pip

pip3 install --upgrade pip

pip3 install ansible
```

## Prepare network on nodes (just on first run)
```bash
sudo -i rm -f /etc/resolv.conf
sudo -i rm -f /etc/NetworkManager/NetworkManager.conf

sudo -i tee /etc/resolv.conf <<"EndOfMessage"
search local
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

## Ansible `inventory.ini` for Openshift `3.11`
```bash
cat > inventory.ini << "EndOfMessage"
[OSEv3:children]
masters
nodes
etcd
lb

[masters]
openshift-master-0.local

[lb]
openshift-lb-0.local

[etcd]
openshift-master-0.local

[nodes]
openshift-master-0.local  openshift_node_group_name='node-config-master'
openshift-compute-0.local openshift_node_group_name='node-config-compute'
openshift-infra-0.local   openshift_node_group_name='node-config-infra'

[nodes:vars]
openshift_disable_check=disk_availability,memory_availability,docker_storage

[masters:vars]
openshift_disable_check=disk_availability,memory_availability,docker_storage

[OSEv3:vars]
ansible_ssh_user=ansible
openshift_deployment_type=origin
ansible_become=true
openshift_release=v3.11
openshift_master_default_subdomain=apps.local
openshift_master_cluster_hostname=openshift-master-0.local
debug_level=2
EndOfMessage
```

## Ansible `inventory.ini` for Openshift `3.9`
```bash
[OSEv3:children]
masters
nodes
etcd
lb

[masters]
openshift-master-0.local

[lb]
openshift-lb-0.local

[etcd]
openshift-master-0.local

[nodes]
openshift-master-0.local
openshift-infra-0.local       openshift_node_labels="{'region': 'infra', 'zone': 'default'}"
openshift-compute-0.local     openshift_node_labels="{'region': 'primary', 'zone': 'default'}"

[nodes:vars]
openshift_disable_check=disk_availability,memory_availability,docker_storage

[masters:vars]
openshift_disable_check=disk_availability,memory_availability,docker_storage

[OSEv3:vars]
ansible_user=ansible
openshift_deployment_type=origin
ansible_become=true
openshift_release=v3.9
openshift_master_default_subdomain=apps.local
openshift_master_cluster_hostname=openshift-master-0.local
debug_level=2
template_service_broker_selector={'region': 'infra'}
```

#### If required ommit some checks
```bash
openshift_check_min_host_disk_gb=1 openshift_check_min_host_memory_gb=1
```

## OpenShift ansible playbooks

### Install
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

### Get pods which status is not Running
```bash
for i in `oc get ns | tail -n +2 | awk '{print $1}'` ; do 
  echo "Namespace: $i"
  oc get pods -n $i 2>/dev/null | tail -n +2 | awk '$3!="Running" {print $1,$3}' 
  echo
done
```

### Get resources
```bash
NAMESPACES="default example"
RESOURCES="pods pvc pv sc cm ingress deployments svc"

for i in $NAMESPACES ; do
  echo "Namespace: $i"
  for j in $RESOURCES ; do
    oc get "$j" -n "$i" 
  done
  echo
done
```

### login as admin
```bash
oc login -u system:admin -n default
```

### Pushing docker images
```
# oc get svc/docker-registry -n default

OS_REG_ADDR="172.30.13.74"
OS_REG_PORT="5000"

sudo -i tee /etc/docker/daemon.json <<EndOfMessage
{
        "insecure-registries" : ["$OS_REG_ADDR:$OS_REG_PORT"]
}
EndOfMessage

sudo -i service docker restart
sudo -i chmod 777 /var/run/docker.sock

oc login

DOCKER_URL="docker.io"
DOCKER_VENDOR="grafana"
DOCKER_IMAGE="grafana-enterprise"
test -z $DOCKER_VENDOR && DOCKER_PATH="$DOCKER_IMAGE" || DOCKER_PATH="$DOCKER_VENDOR/$DOCKER_IMAGE"
DOCKER_VERSION="latest"
DOCKER_PATH="$DOCKER_URL/$DOCKER_PATH"

OS_PROJ_NAME="linuxpolska"
OS_IMAGE_PATH="$OS_PROJ_NAME/$DOCKER_IMAGE"

oc project "$OS_PROJ_NAME"
OC_TOKEN="`oc whoami -t`"

oc login -u system:admin -n default

docker login -u admin -p "$OC_TOKEN" "$OS_REG_ADDR:$OS_REG_PORT"

docker pull "$DOCKER_PATH:$DOCKER_VERSION"

docker tag "$DOCKER_PATH" "$OS_REG_ADDR:$OS_REG_PORT/$OS_IMAGE_PATH"
docker push "$OS_REG_ADDR:$OS_REG_PORT/$OS_IMAGE_PATH:$DOCKER_VERSION"
```

### Network diagnostics
```bash
nsenter -t PID -n ip addr

conntrack -L
```

## Certificates 

### Pods not starting on `OpenShift 3.9`

```bash
openshift-master/redeploy-openshift-ca.yml
```

### Fix certificates on x509 Error, deploy whole `in order`
```bash
redeploy-certificates.yml

openshift-etcd/redeploy-ca.yml

openshift-master/redeploy-certificates.yml
openshift-master/redeploy-openshift-ca.yml
```

### Other certificates
```bash
openshift-node/redeploy-certificates.yml

openshift-hosted/redeploy-registry-certificates.yml
openshift-hosted/redeploy-router-certificates.yml
```

# Local Persistent Volume

```bash
LPV_ALIAS="grafana0"
LPV_DIR=`mktemp -d $LPV_ALIAS-XXXXXXXXXX`

mkdir "$LPV_DIR/pvc"
mkdir "$LPV_DIR/pv"

cat > $LPV_DIR/pvc-template.yml << EndOfMesage
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: $LPV_ALIAS-pvc-XXXXX
spec:
  accessModes:
  - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
  storageClassName: $LPV_ALIAS-sc-XXXXX
EndOfMesage

cat > $LPV_DIR/pv-template.yml << EndOfMesage
apiVersion: v1
kind: PersistentVolume
metadata:
  name: $LPV_ALIAS-pv-XXXXX
spec:
  capacity:
    storage: 1Gi
  accessModes:
  - ReadWriteOnce
  persistentVolumeReclaimPolicy: Delete
  storageClassName: $LPV_ALIAS-sc-XXXXX
  local:
    path: /mnt/local-storage
  nodeAffinity:
    required:
      nodeSelectorTerms:
      - matchExpressions:
        - key: kubernetes.io/hostname
          operator: In
          values:
          - openshift-compute-0
EndOfMesage

for i in `seq -w 0 20` ; do 
  cat $LPV_DIR/pvc-template.yml | sed "s/XXXXX/$i/g " > $LPV_DIR/pvc/$i.yml 
  cat $LPV_DIR/pv-template.yml | sed "s/XXXXX/$i/g " > $LPV_DIR/pv/$i.yml
done

for i in `ls "$LPV_DIR/pv" | xargs -0` ; do oc create -f ./$LPV_DIR/pv/$i ; done
for i in `ls "$LPV_DIR/pvc" | xargs -0` ; do oc create -f ./$LPV_DIR/pvc/$i ; done
```

### Self signed

```bash
openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out server.crt \
            -keyout server.key
```

# Keycloak

```bash
KEYCLOAK_PASSWORD
KEYCLOAK_USER
NAMESPACE
PROXY_ADDRESS_FORWARDING=true
```

# SSO Services

## GitLab (/etc/gitlab/gitlab.rb)
```bash
gitlab_rails['omniauth_enabled'] = true
gitlab_rails['omniauth_allow_single_sign_on'] = ['saml']
gitlab_rails['omniauth_block_auto_created_users'] = false
gitlab_rails['omniauth_auto_link_saml_user'] = true
gitlab_rails['omniauth_providers'] = [
  {
    name: 'saml',
    args: {
             assertion_consumer_service_url: 'https://1git0.localdomain/users/auth/saml/callback',
             idp_cert_fingerprint: 'A4:F1:5D:EF:E5:7E:F7:3E:78:59:59:09:96:7B:8D:11:F7:A8:0B:45',
             idp_sso_target_url: 'https://alpha.seems.legal/auth/realms/linuxpolska/protocol/saml/clients/1git0.localdomain',
             issuer: '1git0.localdomain',
             attribute_statements: {
                     first_name: ['first_name'],
                     last_name: ['last_name'],
                     name: ['name'],
                     username: ['name'],
                     email: ['email']
             },
             name_identifier_format: 'urn:oasis:names:tc:SAML:2.0:nameid-format:persistent'
           },
    label: 'Linux Polska Sp. z o. o.'
  }
]
```

### Formating Certificate
```bash
https://www.samltool.com/format_x509cert.php
https://www.samltool.com/fingerprint.php
```

## SonarQube

```bash
sonar.forceAuthentication=true
sonar.auth.saml.enabled=true
sonar.auth.saml.applicationId=gamma.seems.legal
sonar.auth.saml.providerName=Keycloak
sonar.auth.saml.providerId=https://alpha.seems.legal/auth/realms/linuxpolska
sonar.auth.saml.loginUrl=https://alpha.seems.legal/auth/realms/linuxpolska/protocol/saml/clients/gamma.seems.legal
sonar.auth.saml.certificate.secured=MIICpTCCAY0CBgFzpnmCejANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtsaW51eHBvbHNrYTAeFw0yMDA3MzEyMDAyMjdaFw0zMDA3MzEyMDA0MDdaMBYxFDASBgNVBAMMC2xpbnV4cG9sc2thMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtobfBINvZGgzT3VFtRerTiXAHCQqqU2MHyPrGAdCBiMudH982pu0Qhnlsm3BUteeeEPA1BvL7Cc1b79pe2Udzpv08kfeki6rkDZG244/WrWrtthCpKyvSQnwK40QfXlI92wHvavIFhSKe1hdkUePGLTS9MHFipKtjZD5FWDjDXU2p0JjcYF9FqJ4CQLiG2EMclwSpM8iTjs5XgugpKs2DnRGdwOnYTqy/URUz4TRwaupWvKcdyeMTA0f7CLJRGm3imiPUXATRrK/0nrrLSzeFVkqLpP5xGRVzEJf1I7BPVihQfO2w/+xPU0acCBVyMTXUeH1AIGXlqLnFwZqCDSUsQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCqLYuza0ieVTbme4nAoC1ge8Khh4I6iZXx1F15AvgOLu8/C/foA3H7nldK95E7ehZeB4FgmhB5tab2DPTYjGgeexnvcJWR8mL1e+xRiljwjAX9Zvp1GtOsQWqrrrE8TyHwb8DUtGs/UFNOC9fCKNTcexaDb/4E+vP7+MAIKH9SOHSyCdsD6QJW1TbNRRj1YP+h7mqIBZi1GuWtOb84COXEWOQGlLn1Y7ZBv8xqx+EYDgSIFpPS+GQH6NjjshScDhU3/ad66a367xfSrE4bPpk7nUnGx4wA6AClo9ts/DdCzdb8ipQgJqzOdqKpM61yrTeEpMML1+nrXnl44c3eB404
sonar.auth.saml.user.login=login
sonar.auth.saml.user.name=name
sonar.auth.saml.user.email=email
sonar.auth.saml.group.name=groups
```

# Applications mount paths

## Grafana
```bash
/etc/grafana # grafana.ini, ldap.toml
/etc/grafana/provisioning/datasources
/etc/grafana/provisioning/notifiers
/etc/grafana/provisioning/plugins
/etc/grafana/provisioning/dashboards
```

## Sonarqube
```bash
/opt/sonarqube/conf # sonar.properties, wrapper.conf
```

## Gitlab
```bash
/etc/gitlab # gitlab.rb
```