locals {
  name  = "sample-project"
  owner = "Ajeet Yadav"
}

provider "aws" {
  region = var.region
}
