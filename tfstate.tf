terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "tk-terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}