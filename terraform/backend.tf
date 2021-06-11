terraform {
  backend "s3" {
   region = "us-west-1"
   bucket = "yogi-ntt"
   key = "terraform-test.tfstate"
   access_key = "AKIAX63KK5HYCBA5WN7U"
   secret_key = "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"

 }
}

