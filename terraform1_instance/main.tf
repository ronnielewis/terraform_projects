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
  region = "us-west-2"
  profile = "terraform"
}

resource "aws_instance" "example_instance_1" {
ami = "ami-0747e613a2a1ff483"
instance_type = "t2.micro"

}
