module "iam_user_dev" {
  source             = "../../modules/iam"
  providers          = { aws = aws.dev-admin }
  region             = var.region
  profile            = "dev-admin"
  user_name          = "dev-vault"
  policy_name        = "dev-policy"
  policy_description = "Policy for dev user"
  policy_actions = [
    "iam:AttachUserPolicy",
    "iam:CreateAccessKey",
    "iam:CreateUser",
    "iam:DeleteAccessKey",
    "iam:DeleteUser",
    "iam:DeleteUserPolicy",
    "iam:DetachUserPolicy",
    "iam:GetUser",
    "iam:ListAccessKeys",
    "iam:ListAttachedUserPolicies",
    "iam:ListGroupsForUser",
    "iam:ListUserPolicies",
    "iam:PutUserPolicy",
    "iam:AddUserToGroup",
    "iam:RemoveUserFromGroup"
  ]
  policy_resources = ["*"]
}

module "vault_backend_dev" {
  source            = "../..//modules/vault"
  providers         = { vault = vault.dev-vault }
  vault_address     = "http://127.0.0.1:8202"
  vault_token       = var.dev_vault_token
  access_key_id     = module.iam_user_dev.access_key_id
  secret_access_key = module.iam_user_dev.secret_access_key
  backend_path      = "aws-dev"
}
