data "terraform_remote_state" "remote_state" {
  backend = "remote"

  config = {
    organization = "bankexample"
    workspaces = {
      name = "multi-cloud-networking"
    }
  }
}
