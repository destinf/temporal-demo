require './configuration'
require './flaky_workflow/flaky_workflow'

Temporal.start_workflow(FlakyWorkflow)
