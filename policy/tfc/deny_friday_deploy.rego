package policy.tfc

# Based on https://blog.styra.com/blog/the-power-of-data-calendar-based-policy-enforcement
enforce[decision] {
  message := "No deployments allowed on Fridays"

  time.weekday(time.now_ns()) == "Friday"

  decision := {
    "allowed": false,
    "message": message
  }
}
