resource "aws_ecr_repository" "repo" {
  name = local.ecr_repository_name
}

# The null_resource resource implements the standard resource lifecycle but takes no further action.
resource "null_resource" "ecr_image" {
  triggers = {
    node_file   = md5(file("${path.module}/../${local.app_dir}/index.js"))
    docker_file = md5(file("${path.module}/../${local.app_dir}/Dockerfile"))
  }

  provisioner "local-exec" {
    command = <<EOF
            aws configure set aws_access_key_id ${var.aws_access_key} && aws configure set aws_secret_access_key ${var.aws_secret_key} && aws configure set region ${var.aws_region}
            aws ecr get-login-password --region ${var.aws_region} | docker login --username AWS --password-stdin ${local.account_id}.dkr.ecr.${var.aws_region}.amazonaws.com
            cd ${path.module}/../${local.app_dir}
            docker build -t ${aws_ecr_repository.repo.repository_url}:${local.ecr_image_tag} .
            docker push ${aws_ecr_repository.repo.repository_url}:${local.ecr_image_tag}
       EOF
  }
}

data "aws_ecr_image" "lambda_image" {
  depends_on = [
    null_resource.ecr_image
  ]
  repository_name = local.ecr_repository_name
  image_tag       = local.ecr_image_tag
}
