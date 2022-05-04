package policy.tfc

enforce[decision] {
  # For this demo, deny actions by test-tfc-user
  message := "The test-tfc-user is not permitted to make these changes"

  input.styra-tfc-webhook.run_created_by == "test-tfc-user"

  decision := {
    "allowed": false,
    "message": message
  }
}
