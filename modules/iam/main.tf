
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  alias  = "this"
  region = var.region
  profile = var.profile
}

resource "aws_iam_user" "user" {
  provider = aws.this
  name     = var.user_name
}

data "aws_iam_policy_document" "policy" {
  provider = aws.this
  statement {
    effect    = "Allow"
    actions   = var.policy_actions
    resources = var.policy_resources
  }
}

resource "aws_iam_policy" "policy" {
  provider    = aws.this
  name        = var.policy_name
  description = var.policy_description
  policy      = data.aws_iam_policy_document.policy.json
}

resource "aws_iam_policy_attachment" "attachment" {
  provider   = aws.this
  name       = "${var.user_name}-policy-attachment"
  users      = [aws_iam_user.user.name]
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_iam_access_key" "access_key" {
  provider = aws.this
  user     = aws_iam_user.user.name
}


