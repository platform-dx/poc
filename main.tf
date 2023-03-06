resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "GameScores"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 55
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