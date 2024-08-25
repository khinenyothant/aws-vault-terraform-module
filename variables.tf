variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "master_vault_token" {
  type        = string
  description = "Token of the master Vault server"
}

variable "dev_vault_token" {
  type        = string
  description = "Token of the dev Vault server"
}