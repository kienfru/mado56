resource "aws_s3_bucket" "kien-test-bucket" {
    bucket =var.bucket
    
    tags = {
      Name = "kien-test-bucket"
    }

  
}