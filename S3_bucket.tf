# Configure AWS provider and set the region
provider "aws" { 
  region = "us-east-2"
}

# Generate a random hexadecimal ID of 4 bytes to ensure bucket name uniqueness
resource "random_id" "bucket_id" {
  byte_length = 4
}

# Create an S3 bucket with a unique name using the random ID
resource "aws_s3_bucket" "sample_bucket" {
  bucket = "jb-sre-bucket-demo-${random_id.bucket_id.hex}"

  tags = {
    Name        = "Sample S3 Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.sample_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }

  depends_on = [aws_s3_bucket.sample_bucket]
}
