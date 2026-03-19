terraform {
 required_providers {
  aws ={
     source = "hashicorp/aws"
     version = "~> 4.16"
  }
 }
required_version = ">= 1.2.0"
}

provider "aws" {
 region="us-east-1"
}

resource "aws_instance" "my_instance" {
  count=2
  ami="ami-0ec10929233384c7f"
  instance_type="t3.micro"
  tags= {
   Name="terra_instance_test"
 }
}

resource "aws_s3_bucket" "my_s3_bucket"{
  bucket="terrapnbucket-2026"

  tags={
    Name="terraform_bucket_2026"
    Environment="Dev"
  }
}
