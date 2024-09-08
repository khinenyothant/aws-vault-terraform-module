provider "aws" {
  alias   = "dev-admin"
  region  = var.region
  profile = "dev-admin"
}

provider "vault" {
  alias   = "dev-vault"
  address = "http://127.0.0.1:8202"
  token   = var.dev_vault_token
}
