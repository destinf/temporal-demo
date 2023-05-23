require './configuration'
require './hello_workflow'
require './hello_activity'
require 'temporal/worker'
require './flaky_workflow/flaky_workflow'
require './flaky_workflow/flaky_activity'

worker = Temporal::Worker.new
worker.register_workflow(HelloWorldWorkflow)
worker.register_activity(HelloActivity)
worker.register_workflow(FlakyWorkflow)
worker.register_activity(FlakyActivity)
worker.start # runs forever
