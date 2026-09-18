package nuon

# Trivially passes: warn only on a condition that never matches in the demo.
warn contains msg if {
    some resource in input.plan.resource_changes
    resource.type == "nuon_demo_never_matches"
    msg := sprintf("demo policy: unexpected resource %s", [resource.address])
}
