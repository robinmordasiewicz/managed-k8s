provider "libvirt" {
  uri = "qemu+ssh://${var.libvirtadmin}@${var.libvirtip}/system?sshauth=privkey&no_verify=1"
  #uri = "qemu:///system"
}
