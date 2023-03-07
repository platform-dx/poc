terraform {
  backend "s3" {
    bucket = "poc-samuel"
    key    = "poc-samuel.tfstate"
    region = "us-east-1"  
  }
}

provider "aws" {
  region = "us-east-1"
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

resource "aws_dynamodb_table" "basic-dynamodb-table2" {
  name           = "GameScores2"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  attribute {
    name = "noteId"
    type = "S"
  }
  hash_key = "noteId"
}

resource "aws_dynamodb_table" "basic-dynamodb-table3" {
  name           = "GameScores3"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  attribute {
    name = "noteId"
    type = "S"
  }
  hash_key = "noteId"
}

resource "aws_dynamodb_table" "basic-dynamodb-table4" {
  name           = "GameScores4"
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
