terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.5.7"
}

provider "aws" {
  region = "${var.aws_region}"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "mohan-single-instance"
  ami = "ami-01760eea5c574eb86"
  instance_type = "t3.micro"
  monitoring    = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
