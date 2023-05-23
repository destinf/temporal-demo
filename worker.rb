require './configuration'
require './hello_workflow'
require './hello_activity'
require 'temporal/worker'

worker = Temporal::Worker.new
worker.register_workflow(HelloWorldWorkflow)
worker.register_activity(HelloActivity)
worker.start # runs forever
