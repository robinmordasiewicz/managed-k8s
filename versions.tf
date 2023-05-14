terraform {
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = ">= 0.11.22"
    }
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = ">= 0.7.1"
    }
  }
  cloud {
    organization = "bankexample"

    workspaces {
      name = "workspace-k8s"
    }
  }
}
