variable "vault_address" {
  type    = string
  description = "Address of the Vault server"
}

variable "vault_token" {
  type    = string
  description = "Token to authenticate with Vault"
}

variable "access_key_id" {
  type    = string
  description = "AWS access key ID"
}

variable "secret_access_key" {
  type    = string
  description = "AWS secret access key"
}

variable "backend_path" {
  type    = string
  description = "Path for the AWS secret backend in Vault"
}
