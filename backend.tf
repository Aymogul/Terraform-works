terraform {
  backend "s3" {
    bucket = "mogul-terrafrom-backend" # Replace with your actual S3 bucket name
    key    = "work/terraform.tfstate"
    region = "us-east-1"
  }
}

