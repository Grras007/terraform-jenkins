#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 3.0"
#    }
#  }
#  backend "s3" {
#   region = "us-west-1"
#   bucket = "yogi-ntt"
#   key = "terraform-test.tfstate"
#   access_key = ""
#   secret_key = ""
#
# }
#}




provider "aws" {
  region     = var.reg
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "myec2" {
   ami = "ami-0b2ca94b5b49e0132"      ## AMI id will change accordingly   region
   instance_type = var.instancetype        ## instance_type for the AMI .
}

#backend "s3" {
#   region = "eu-west-1"
#   bucket = "yogi-ntt"
#   key = "terraform-test.tfstate"
#}


