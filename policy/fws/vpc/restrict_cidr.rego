package policy.fws.vpc

enforce[decision] {
	# Get all resources in the plan
	resource := input.planned_values.root_module.resources[_]

	# Check the CIDR block value for the fakewebservices_vpc resource
	resource.type == "fakewebservices_vpc"
	resource.values.cidr_block == "10.0.0.0/16"

	# Return the resource type in the message if the resource fails the policy
	message := sprintf("VPC CIDR 10.0.0.0/16 is not allowed for resource %s", [resource.type])

	decision := {
		"allowed": false,
		"message": message
	}
}
