terraform {
  
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "5.97.0"
    }
  }
}

provider "aws" {
region= "us-east-1"
access_key = "AKIAUETVLMYMPCS4ZZG6"
secret_key = "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"
}


resource "aws_instance" "myserver" {
    ami = "ami-0f88e80871fd81e91"
    instance_type =  "t2.micro"

     tags={
        Name="server1"
     }
  
}