terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

variable "access_key" {
 type = string
 description = "Prefix for bucket"
 default = "woaoah"
}
variable "secret_key" {
 type = string
 description = "Prefix for bucket"
 default = "woaoah"
}

provider "aws" {
  region  = "ap-southeast-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

variable "bucket_prefix" {
 type = string
 description = "Prefix for bucket"
 default = "woaoah"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket_prefix = var.bucket_prefix
}
