###########################################
#                   (_)
#    _ __ ___   __ _ _ _ __
#   | '_ ` _ \ / _` | | '_ \
#   | | | | | | (_| | | | | |
#   |_| |_| |_|\__,_|_|_| |_|
###########################################

variable "region" {
    type = string
}

variable "zone" {
    type = string
}

variable "network" {
    type = string
}

variable "terraform_user" {
    type = string
}

variable "terraform_ssh_keys_pub" {
    type = string
}

variable "ansible_user" {
    type = string
}

variable "ansible_ssh_keys_pub" {
    type = string
}

###############################################################
#                       | |
#    _ __ ___   __ _ ___| |_ ___ _ __
#   | '_ ` _ \ / _` / __| __/ _ \ '__|
#   | | | | | | (_| \__ \ ||  __/ |
#   |_| |_| |_|\__,_|___/\__\___|_|
###############################################################

variable "master_name" {
    type = string
}

variable "master_tags" {
    type = list(string)
}

variable "master_count" {
    type = number
}

variable "master_network_cidr" {
    type = string
}

###############################################################
#              | | (_)                         | |
#   __   _____ | |_ _ _ __   __ _    ___  _ __ | |_   _
#   \ \ / / _ \| __| | '_ \ / _` |  / _ \| '_ \| | | | |
#    \ V / (_) | |_| | | | | (_| | | (_) | | | | | |_| |
#     \_/ \___/ \__|_|_| |_|\__, |  \___/|_| |_|_|\__, |
#                            __/ |                 __/ |
#                           |___/                 |___/
###############################################################

variable "voting_only_name" {
    type = string
}

variable "voting_only_tags" {
    type = list(string)
}

variable "voting_only_count" {
    type = number
}

variable "voting_only_network_cidr" {
    type = string
}

###############################################################
#   (_)                     | |
#    _ _ __   __ _  ___  ___| |_
#   | | '_ \ / _` |/ _ \/ __| __|
#   | | | | | (_| |  __/\__ \ |_
#   |_|_| |_|\__, |\___||___/\__|
#             __/ |
#            |___/
###############################################################

variable "ingest_name" {
    type = string
}

variable "ingest_tags" {
    type = list(string)
}

variable "ingest_count" {
    type = number
}

variable "ingest_network_cidr" {
    type = string
}

###############################################################
#       | |     | |
#     __| | __ _| |_ __ _
#    / _` |/ _` | __/ _` |
#   | (_| | (_| | || (_| |
#    \__,_|\__,_|\__\__,_|
###############################################################

variable "data_name" {
    type = string
}

variable "data_tags" {
    type = list(string)
}

variable "data_count" {
    type = number
}

variable "data_network_cidr" {
    type = string
}

###############################################################
#             | |
#    _ __ ___ | |
#   | '_ ` _ \| |
#   | | | | | | |
#   |_| |_| |_|_|
###############################################################

variable "ml_name" {
    type = string
}

variable "ml_tags" {
    type = list(string)
}

variable "ml_count" {
    type = number
}

variable "ml_network_cidr" {
    type = string
}

###############################################################
#   | |                      / _|
#   | |_ _ __ __ _ _ __  ___| |_ ___  _ __ _ __ ___
#   | __| '__/ _` | '_ \/ __|  _/ _ \| '__| '_ ` _ \
#   | |_| | | (_| | | | \__ \ || (_) | |  | | | | | |
#    \__|_|  \__,_|_| |_|___/_| \___/|_|  |_| |_| |_|
###############################################################

variable "transform_name" {
    type = string
}

variable "transform_tags" {
    type = list(string)
}

variable "transform_count" {
    type = number
}

variable "transform_network_cidr" {
    type = string
}

###############################################################
#                           | (_)           | | (_)
#     ___ ___   ___  _ __ __| |_ _ __   __ _| |_ _ _ __   __ _
#    / __/ _ \ / _ \| '__/ _` | | '_ \ / _` | __| | '_ \ / _` |
#   | (_| (_) | (_) | | | (_| | | | | | (_| | |_| | | | | (_| |
#    \___\___/ \___/|_|  \__,_|_|_| |_|\__,_|\__|_|_| |_|\__, |
#                                                         __/ |
#                                                        |___/
###############################################################

variable "coordinating_name" {
    type = string
}

variable "coordinating_tags" {
    type = list(string)
}

variable "coordinating_count" {
    type = number
}

variable "coordinating_network_cidr" {
    type = string
}

###############################################################
#    _    _ _
#   | |  (_) |
#   | | ___| |__   __ _ _ __   __ _
#   | |/ / | '_ \ / _` | '_ \ / _` |
#   |   <| | |_) | (_| | | | | (_| |
#   |_|\_\_|_.__/ \__,_|_| |_|\__,_|
###############################################################

variable "kibana_name" {
    type = string
}

variable "kibana_tags" {
    type = list(string)
}

variable "kibana_count" {
    type = number
}

variable "kibana_network_cidr" {
    type = string
}

###############################################################
#        | (_)          | |
#     ___| |_  ___ _ __ | |_
#    / __| | |/ _ \ '_ \| __|
#   | (__| | |  __/ | | | |_
#    \___|_|_|\___|_| |_|\__|
###############################################################

variable "client_name" {
    type = string
}

variable "client_tags" {
    type = list(string)
}

variable "client_count" {
    type = number
}

variable "client_network_cidr" {
    type = string
}

###############################################################
#   | |             | | (_)
#   | |__   __ _ ___| |_ _  ___  _ __
#   | '_ \ / _` / __| __| |/ _ \| '_ \
#   | |_) | (_| \__ \ |_| | (_) | | | |
#   |_.__/ \__,_|___/\__|_|\___/|_| |_|
###############################################################

variable "bastion_name" {
    type = string
}

variable "bastion_tags" {
    type = list(string)
}

variable "bastion_network_cidr" {
    type = string
}