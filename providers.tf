provider "volterra" {
  #api_p12_file = var.VOLT_API_P12_FILE
  api_p12_file     = "${var.tenant}.ves.volterra.io.api-creds.p12"
  #  api_cert          = var.VOLT_API_CERT != "" ? "" : var.VOLT_API_CERT
  #  api_key           = var.VOLT_API_KEY != "" ? "" : var.VOLT_API_KEY
  # enterprise api url
  #url = "https://${var.tenant}.console.ves.volterra.io/api"
  # free api url
  url              = "https://console.ves.volterra.io/api"
}




provider "libvirt" {
  uri = "qemu+ssh://${var.libvirt_admin}@${var.libvirt_ip}/system?sshauth=privkey&no_verify=1"
}
