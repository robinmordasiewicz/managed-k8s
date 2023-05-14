# main.tf

module "libvirt" {
  source       = "./libvirt"
  token        = module.volterraedge.token
  appstacksite = module.volterraedge.appstacksite
  uri          = local.LIBVIRT_DEFAULT_URI
  hostnames    = local.hostnames
  libvirtadmin = local.libvirtadmin
  libvirtip    = local.libvirtip
  latitude     = var.latitude
  longitude    = var.longitude
  clustername  = var.clustername
  qcow2        = var.qcow2
}

module "volterraedge" {
  source            = "./volterraedge"
  VOLT_API_P12_FILE = var.VOLT_API_P12_FILE
#  VES_P12_PASSWORD  = var.VES_P12_PASSWORD
  VOLT_API_URL      = var.VOLT_API_URL
  clustername       = var.clustername
  localdomain       = var.localdomain
  k8scluster        = var.k8scluster
  masternodes       = var.masternodes
  workernodes       = var.workernodes
  latitude          = var.latitude
  longitude         = var.longitude
  token             = var.token
  address           = var.address
  kvmappstack       = module.libvirt.kvmappstack
}
