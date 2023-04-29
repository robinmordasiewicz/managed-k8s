output "completion_time" {
  value = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

output "hostnames" {
  value = local.hostnames
}

output "appstacksite" {
  value = module.volterraedge.appstacksite
}

output "kvmappstack" {
   value = module.libvirt.kvmappstack[*]
}
