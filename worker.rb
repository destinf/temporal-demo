require './configuration'
require 'temporal/worker'

worker = Temporal::Worker.new

require './workflows/hello/hello_workflow'
require './workflows/hello/hello_activity'
worker.register_workflow(HelloWorldWorkflow)
worker.register_activity(HelloActivity)

require './workflows/flaky/flaky_workflow'
require './workflows/flaky/flaky_activity'
worker.register_workflow(FlakyWorkflow)
worker.register_activity(FlakyActivity)

require './workflows/failing/failing_activity'
require './workflows/failing/failing_workflow'
worker.register_workflow(FailingWorkflow)
worker.register_activity(FailingActivity)

require './workflows/async/async_activity_1'
require './workflows/async/async_workflow'
worker.register_workflow(AsyncWorkflow)
worker.register_activity(AsyncActivity1)

worker.start # runs forever
