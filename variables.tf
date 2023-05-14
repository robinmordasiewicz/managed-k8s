variable "VOLT_API_P12_FILE" {
  type = string
}

#variable "VES_P12_PASSWORD" {
#  type      = string
#  sensitive = true
#}

variable "VOLT_API_URL" {
  type = string
}

variable "LIBVIRT_DEFAULT_URI" {
  type    = string
  default = "qemu:///system"
}

locals {
  hostnames         = concat(var.masternodes, var.workernodes)
  VOLT_API_URL      = var.VOLT_API_URL
  VOLT_API_P12_FILE = var.VOLT_API_P12_FILE
  #  VES_P12_PASSWORD    = var.VES_P12_PASSWORD
  #LIBVIRT_DEFAULT_URI = var.LIBVIRT_DEFAULT_URI
  LIBVIRT_DEFAULT_URI = "qemu+ssh://${var.libvirtadmin}@${var.libvirtip}/system?sshauth=privkey&no_verify=1"
  libvirtadmin        = var.libvirtadmin
  libvirtip           = var.libvirtip
}

variable "masternodes" {
  type    = list(string)
  default = ["main01"]
}

variable "workernodes" {
  type    = list(string)
  default = []
}

variable "libvirtadmin" {
  type = string
}

variable "libvirtip" {
  type = string
}

variable "qcow2" {
  type    = string
  default = "https://downloads.volterra.io/releases/images/2021-03-01/centos-7.2009.5-202103011045.qcow2"
  #default    = "/var/lib/libvirt/templates/vsb-ves-ce-certifiedhw-generic-production-centos-7.2009.27-202211040823.1667791030/vsb-ves-ce-certifiedhw-generic-production-centos-7.2009.27-202211040823.1667791030.qcow2"
  #default     = "/var/lib/libvirt/templates/vsb-ves-ce-certifiedhw-generic-production-centos-7.2009.27-202302150737.1676454355/vsb-ves-ce-certifiedhw-generic-production-centos-7.2009.27-202302150737.1676454355.qcow2"
}

variable "cpu" {
  type    = number
  default = 4
}

variable "memory" {
  type    = number
  default = 16384
}

variable "certifiedhardware" {
  type    = string
  default = "kvm-voltstack-combo"
}

variable "latitude" {
  type = string
}

variable "longitude" {
  type = string
}

#variable "dnsservers" {
#  type = map(string)
#  default = {
#    primary   = "8.8.8.8"
#    secondary = "8.8.4.4"
#  }
#}

variable "clustername" {
  type    = string
  default = "k8s01-tor"
}

variable "k8s_cluster_name" {
  type    = string
  default = "k8s-profile"
}

variable "k8scluster" {
  type    = string
  default = "k8s-profile"
}

variable "localdomain" {
  type    = string
  default = "local"
}

variable "token" {
  type    = string
  default = ""
}

variable "address" {
  type = string
}

variable "kvmappstack" {
  type    = any
  default = []
}

