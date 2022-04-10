terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0521a4a0a1329ff86"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
