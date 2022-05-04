package policy.fws.vpc

enforce[decision] {
  # Only one resource in the Terraform plan for this demo
  resource := input.planned_values.root_module.resources[0]
  message := "VPC CIDR 10.0.0.0/16 is not allowed"

  resource.type == "fakewebservices_vpc"
  resource.values.cidr_block == "10.0.0.0/16"

  decision := {
    "allowed": false,
    "message": message
  }
}
