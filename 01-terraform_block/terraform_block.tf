terraform {
  required_version = "~> .14.3" # terraform version 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# to store our state file in s# bucket 

backend "s3" {
  bucket = "bucket_name"         #name of bucket that we have created
  key    = "/path/to_sub_folder" #path of the folder we have created inside a bucket in which we want to save our state file
  region = ""

}


provider "aws" {
  region  = "us-west-2"
  profile = "dev-account"
  #1.access_key and secret_acccess_key are saved in .aws/credentials to we dont have to specify here
  #2. suppose we have a user credentials and we save it as [dev-account] in .aws/credentials so we have to specify it if we want to launch resource for taht user

}

/*
resource "aws_instance" "myec2" {

 ami = ""
 instance_type = ""

}
*/
