package policy.tfc.runs

# For this demo, deny all actions by any user not in the allowed_users set.
# You can extend this example by pulling user permissions from a DAS data source,
# such as an S3 JSON file, HTTP endpoint, or LDAP service. Additional details:
# https://docs.styra.com/policies/policy-authoring/datasources/overview

allowed_users := {
    "some-admin",
    "another-admin",
    "tfc-owner"
}

enforce[decision] {
    user := input["styra-tfc-webhook"].run_created_by

    # Check if user is is in the allowed_users set
    not allowed_users[user]
    
    message := sprintf("User %s is not permitted to make these changes", [user])

    decision := {
        "allowed": false,
        "message": message
    }
}
