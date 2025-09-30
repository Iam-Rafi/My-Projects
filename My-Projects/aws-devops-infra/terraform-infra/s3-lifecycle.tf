resource "aws_s3_bucket" "demo" {
  bucket = "devops-sample-bucket-unique-12345"
  acl    = "private"
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "example" {
  bucket = aws_s3_bucket.demo.id

  rule {
    id     = "archive-30days"
    status = "Enabled"

    transition {
      days          = 30
      storage_class = "GLACIER"
    }
  }
}
