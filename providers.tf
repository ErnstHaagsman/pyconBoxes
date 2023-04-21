terraform {
  required_providers {
    gandi = {
      version = "~> 2.0.0"
      source   = "go-gandi/gandi"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  profile = "reinvent22"
}

provider "gandi" {
  key = var.gandi_key
}
