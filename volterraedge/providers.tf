provider "volterra" {
  #api_p12_file = var.VOLT_API_P12_FILE
  api_p12_file = "volterra.ves.volterra.io.api-creds.p12"
  #url          = "https://${var.tenant}.console.ves.volterra.io/api"
  url = var.url
}
