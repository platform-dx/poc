
terraform {
  backend "s3" {
    bucket = "poc-samuel"
    key    = "poc-samuel.tfstate"
    region = "us-east-1"
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "GameScores"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  attribute {
    name = "noteId"
    type = "S"
  }
  hash_key = "noteId"

}

resource "aws_dynamodb_table" "othertable" {
  name           = "newtable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  attribute {
    name = "noteId"
    type = "S"
  }
  hash_key = "noteId"

}

output "my_output_arn" {
  value = aws_dynamodb_table.basic-dynamodb-table.arn
}
output "my_output_billing_mode" {
  value = aws_dynamodb_table.basic-dynamodb-table.billing_mode
}