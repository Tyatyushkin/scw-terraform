terraform {
  required_version = "~> 1"
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
    }
  }
}

provider "scaleway" {
  region     = var.reg
  project_id = var.project_id
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "scaleway_account_ssh_key" "main" {
  name       = "main"
  public_key = var.public_key
}