terraform {
 backend "s3" {
 # Replace this with your bucket name!
 bucket = "mogul-terrafrom-backend"
 key = "stage/data-stores/mysql/terraform.tfstate"
 region = "us-east-2"
 # Replace this with your DynamoDB table name!
 dynamodb_table = "terraform-up-and-running-locks"
 encrypt = true
 }
}

output "address" {
 value = aws_db_instance.example.address
 description = "Connect to the database at this endpoint"
}

output "port" {
 value = aws_db_instance.example.port
 description = "The port the database is listening on"
}
