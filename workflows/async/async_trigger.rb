require './configuration'
require './workflows/async/async_workflow'

Temporal.start_workflow(AsyncWorkflow)
