terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = AWS_ACCESS_KEY_ID
  secret_key = AWS_SECRET_ACCESS_KEY
}

#best practice to not declare variables in main but to create a variables.tf file
# variable "my_instance_type" {
#   type = string
#   default = "t2.micro"
#   description = "My instance type"
# }
    
resource "aws_instance" "foobar" {
  ami = "" #add whichever instance
  instance_type = var.my_instance_type

  tags = var.instance_tags
}