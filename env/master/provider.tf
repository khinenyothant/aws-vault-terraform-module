provider "aws" {
  alias   = "master-admin"
  region  = var.region
  profile = "master-admin"
}

provider "vault" {
  alias   = "master-vault"
  address = "http://127.0.0.1:8200"
  token   = var.master_vault_token
}
