data "terraform_remote_state" "remote_state" {
  backend = "remote"

  config = {
    #organization = "${var.tfc_organization}"
    organization = "bankexample"
    workspaces = {
      #name = "${var.tfc_k8s_workspace_name}"
      name = "k8s"
    }
  }
}
