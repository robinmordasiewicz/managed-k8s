data "terraform_remote_state" "remote_state" {
  backend = "remote"

  config = {
     #defaults = 
    organization = "bankexample"
    workspaces = {
      name = "k8s"
    }
  }
}
