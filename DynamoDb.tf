resource "aws_dynamodb_table" "my_table" {
  name           = "state_db"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Lock_Id"

  attribute {
    name = "Lock_Id"
    type = "S"
  }
  tags = {
    Name        = "state_db"
    Environment = "production"
  }
}