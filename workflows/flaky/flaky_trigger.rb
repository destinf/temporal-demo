require './configuration'
require './workflows/flaky/flaky_workflow'

Temporal.start_workflow(FlakyWorkflow)
