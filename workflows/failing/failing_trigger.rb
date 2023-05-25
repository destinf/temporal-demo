require './configuration'
require './workflows/failing/failing_workflow'

Temporal.start_workflow(FailingWorkflow)
