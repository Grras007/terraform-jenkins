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
#   access_key = "AKIAX63KK5HYCBA5WN7U"
#   secret_key = "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"
#
# }
#}




provider "aws" {
  region     = var.reg
  access_key = "AKIAX63KK5HYCBA5WN7U"
  secret_key = "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"
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


