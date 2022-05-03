terraform {

  required_version = ">= 1.1.9"

  required_providers {
    fakewebservices = {
      source  = "hashicorp/fakewebservices"
      version = "~> 0.2"
    }
  }
}
