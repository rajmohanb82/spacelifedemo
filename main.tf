terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
      }
    }
    required_version = ">=1.2.0"
}

provider "aws" {
  access_key = "AKIA4U7KR5QRHK6VHTBC"
  secret_key = "qp4DbSCPAY2GrJSx8vDN0eQdwRfuQ+Xufv8dX5bz"
  region     = "us-east-1" # Set your desired AWS region
}

resource "aws_instance" "app_server" {

    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t3.medium"
    
    tags = {
        Name = "webapp"
        }
    }

