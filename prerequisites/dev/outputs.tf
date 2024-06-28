output "s3_bucket_name" {
  value = module.prerequisites.s3_bucket_name
}

output "dynamodb_table_name" {
  value = module.prerequisites.dynamodb_table_name
}