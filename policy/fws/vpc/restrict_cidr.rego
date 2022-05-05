package policy.fws.vpc

enforce[decision] {
  resource := input.planned_values.root_module.resources[_]

  resource.type == "fakewebservices_vpc"
  resource.values.cidr_block == "10.0.0.0/16"
  
  message := sprintf("VPC CIDR 10.0.0.0/16 is not allowed for resource %s", [resource.type])

  decision := {
    "allowed": false,
    "message": message
  }
}
