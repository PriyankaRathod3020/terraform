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

locals {
  my_instname = {"terra":"ami-0ec10929233384c7f","test":"ami-02dfbd4ff395f2a1b"}
}

resource "aws_instance" "my_instances"{
  for_each = local.my_instname
  ami =each.value
  instance_type="t3.micro"
  tags = {
   Name=each.key
 }
}
