terraform {
  cloud {

    organization = "fnc-project-19"

    workspaces {
      name = "s3-webapp-workspace"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "s3-bucket-webapp" {
  source  = "app.terraform.io/fnc-project-19/s3-bucket-webapp/aws"
  version = "1.0.0"
  name    = "webapp-bucket"
  region  = "us-east-1"
  prefix  = "fnc"
}
