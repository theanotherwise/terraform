region = "us-central1"
zone = "us-central1-a"

name = "elasticsearch"

image = "ubuntu-os-cloud/ubuntu-1804-lts"

ssh_keys_pub = <<EndOfMessage
theanotherwise:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSW8+yW1Jk0iVU4+MWS/H7ExY5z+++jxfkDtTX0bIc+4OCwdsR/FsyR6xec3Mj/erS647QF9MLOZUnzdRrdolvnK3UagqEA93euP21vpUQYI2ICNyvShdL0IsW2lN5vwGLFUjl4SZOXyz3sMD30eN6EUq/FVrUxZip4DZR3s9onSsH/aDSJSSc9NmCCVdiaaFok8VYQcriH00WsRAbK8KdR1g5Cn0Nl+j+x3cYpJj3xN+eFQeZ8hunh1sx6JR5c+soBW/D9yT4EAT8+6itVnKZY3WEcgL2DD5yqkf+7RLH0pnrVk4sVjMumpwzg8SkA3Ww/HQTV32MGjdOTxlaHq6ud5NEp0fTWIPCXftFeoGGapY7kYhApvM7QAf6PI3rJZooysN0chQbJ1cjkw3BVFPPtSjsN4/3ZjocC5iU/WN7RJ5O/ey4SHeMDujEhRSWD/2FysjxvRIEtBSlYPP667d2cZXGupZJl9y0DfXcEcI7WvpS2nGHHRiHOqq+AKXHdFc= theanotherwise@zeta
EndOfMessage

apt_install_apache2 = <<EndOfMessage
sudo killall apt apt-get
sudo dpkg --configure -a
sudo apt-get update
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2
EndOfMessage

network = "network"