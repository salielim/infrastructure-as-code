locals {
  common_tags = {
    Name        = "${var.s3_bucket_name}"
    Environment = "${var.s3_bucket_env}"
    Project     = "${var.project_key}"
  }
}

data "aws_iam_policy_document" "s3-website-policy" {
  statement {
    actions = [
      "s3:GetObject"
    ]
    principals {
      identifiers = ["*"]
      type        = "AWS"
    }
    resources = [
      "arn:aws:s3:::${var.s3_bucket_name}/*"
    ]
  }
}
