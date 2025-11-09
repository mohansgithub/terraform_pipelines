resource "aws_s3_bucket" "sensitive_bucket" {
  bucket = "my-secret-bucket"
  acl    = "private"
  tags = {
    # This is a hardcoded secret, a common security vulnerability
    SecretKey = "superSecretValue123" 
  }
}
