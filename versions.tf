# Terraform CLI v1.1.9 or higher is required for Run Task feedback in the CLI.
# Using an earlier CLI version will only show Run Task results in your
# Terraform Cloud workspace run details online.

terraform {

  required_version = ">= 1.1.9"

  required_providers {
    fakewebservices = {
      source  = "hashicorp/fakewebservices"
      version = "~> 0.2"
    }
  }
}
