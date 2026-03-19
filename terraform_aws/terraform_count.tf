terraform {
 required_providers {
   aws = {
    source = "hashicorp/aws"
    version = "~> 4.16"
  }
 }
 required_version = ">= 1.2.0"
}

provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "my_instances"{
  count =2
  ami ="ami-0ec10929233384c7f"
  instance_type="t3.micro"
  tags = {
   Name="terraform-test-${count.index}"
 }
}
