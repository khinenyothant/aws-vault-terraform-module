output "backend_path" {
  value       = vault_aws_secret_backend.backend.path
  description = "The path of the AWS secret backend."
}
