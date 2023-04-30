data "terraform_remote_state" "remote_state" {
  backend = "remote"

  config = {
    organization = "${var.tfc_organization}"
    workspaces = {
      name = "${var.tfc_k8s_workspace_name}"
    }
  }
}
