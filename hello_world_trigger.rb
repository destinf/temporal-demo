require './configuration'
require './hello_workflow'

Temporal.start_workflow(HelloWorldWorkflow)
