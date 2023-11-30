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
  region     = "us-east-1" # Set your desired AWS region
}

resource "aws_vpc" "nw-dev" {
  cidr_block = "11.0.0.0/16"

  tags = {
        Name = var.vpc_name
        }
}

resource "aws_instance" "app_server" {

    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t3.medium"
    
    tags = {
        Name = var.vpc_name
        }
    }

