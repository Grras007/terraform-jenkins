terraform {
  backend "s3" {
   region = "us-west-1"
   bucket = "yogi-ntt"
   key = "terraform-test.tfstate"
   access_key = ""
   secret_key = ""

 }
}

