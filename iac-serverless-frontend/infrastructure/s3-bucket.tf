resource "aws_s3_bucket" "site-s3-bucket" {
  bucket = var.s3_bucket_name
  acl    = "public-read"
  policy = data.aws_iam_policy_document.s3-website-policy.json

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "site-s3-access-control" {
  bucket = aws_s3_bucket.site-s3-bucket.id

  block_public_acls  = true
  ignore_public_acls = true
}
