terraform {
  required_version = ">= 0.14.11"
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = ">= 0.11.19"
    }
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = ">= 0.7.1"
    }
  }
  cloud {
    organization = "${var.tfc_organization}"
    workspaces {
      name = "${var.tfc_k8s_workspace_name"
    }
  }
}
