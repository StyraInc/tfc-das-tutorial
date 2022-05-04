# This block instructs the Terraform CLI to use your Terraform Cloud workspace
# as the remote backend for this project.
#
# Update the organization value to your Terraform Cloud organization's name
# before running `terraform init`.

terraform {

  cloud {
    organization = "your-organization"

    workspaces {
      name = "tfc-das-tutorial"
    }
  }
}
