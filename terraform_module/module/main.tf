provider "aws" {
 region = "us-east-1"
}

module "my_ec2_module" {
 source = "../terrafile"
 ami_id = "ami-0ec10929233384c7f"
 instance_type = "t3.micro"
 key_name = "terra-key"
 instance_name = "terraform_ec2instance"
}

output "module_output" {
 value = module.my_ec2_module.instance_public_ip 
}
