locals {
  prefix              = var.project_key
  app_dir             = "src"
  account_id          = data.aws_caller_identity.current.account_id
  ecr_repository_name = "${local.prefix}-container"
  ecr_image_tag       = "latest"
}

data "aws_caller_identity" "current" {}
