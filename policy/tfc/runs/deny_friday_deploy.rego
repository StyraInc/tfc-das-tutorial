package policy.tfc.runs

# Based on https://blog.styra.com/blog/the-power-of-data-calendar-based-policy-enforcement
enforce[decision] {
    message := "No deployments allowed on Fridays"

    # Check if current weekday is Friday
    time.weekday(time.now_ns()) == "Friday"

    decision := {
        "allowed": false,
        "message": message
    }
}
