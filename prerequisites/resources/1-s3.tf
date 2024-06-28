# Create S3 bucket for remote tfstate file and block public access to it

resource "aws_s3_bucket" "terraform_state" {
  
  bucket = "terraform-state-vpc-${var.env}"

  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name = "s3-state-file-${var.env}"
  }
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}