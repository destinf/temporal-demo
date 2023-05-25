require './configuration'
require './workflows/hello/hello_workflow'

Temporal.start_workflow(HelloWorldWorkflow)
