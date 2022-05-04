# The PROVIDER_TOKEN allows the Fake Web Services provider to create fake
# resources in your Terraform Cloud account. You will set this variable
# value in your workspace variables in Terraform Cloud.

variable "PROVIDER_TOKEN" {
  description = "Token for the HashiCorp fakewebservices provider"
  type        = string
  sensitive   = true
}
