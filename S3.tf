resource "aws_s3_bucket" "Terrastate" {
  bucket = "aman-terrastate-bucket"

  tags = {
    Name        = "aman-terrastate-bucket"
    Environment = "Dev"
  }
}