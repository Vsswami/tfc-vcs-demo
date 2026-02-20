terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 5.0"

    }

  }

 

  cloud {

    organization = "Vansh-organization"

    workspaces {

      name = "vansh-tfs-demo"

    }

  }

}

 

provider "aws" {

  region = "us-east-1"

}

 

resource "aws_s3_bucket" "demo" {

  bucket = "tfc-cli-demo-vansh-bucket-12345"

}
