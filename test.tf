terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "eu-north-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-09a9858973b288bdd"
   instance_type = "t3.medium"
    vpc_id = "vpc-0116d6fd4a36821cc"
   key_name = "ssh-SG-EC2-27Feb"
   tags = {
      Name = "Example"
   }

}
