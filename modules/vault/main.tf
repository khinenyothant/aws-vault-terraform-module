terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "4.4.0"
    }
  }
}

provider "vault" {
  alias   = "this"
  address = var.vault_address
  token   = var.vault_token
}

resource "vault_aws_secret_backend" "backend" {
  provider   = vault.this
  access_key  = var.access_key_id
  secret_key  = var.secret_access_key
  path        = var.backend_path
}
