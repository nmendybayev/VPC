# Create DynamoDB table

resource "aws_dynamodb_table" "dynamodb_terraform_state_lock" {
  name           = "dynamodb-terraform-state-lock-${var.env}"
  hash_key       = "LockID"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "dynamo-lock-${var.env}"
  }
}