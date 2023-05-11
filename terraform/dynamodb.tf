resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${var.app_id}-${var.app_env}"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Project     = "demo-terraform"
    Owner       = "DevOps Team"
    Environment = "${var.app_env}"
  }
}