provider "aws" {
  alias   = "master-admin"
  region  = var.region
  profile = "master-admin"
}

provider "aws" {
  alias   = "dev-admin"
  region  = var.region
  profile = "dev-admin"
}

provider "vault" {
  alias   = "master-vault"
  address = "http://127.0.0.1:8200"
  token   = var.master_vault_token
}

provider "vault" {
  alias   = "dev-vault"
  address = "http://127.0.0.1:8202"
  token   = var.dev_vault_token
}
