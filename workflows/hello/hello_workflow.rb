require './workflows/hello/hello_activity'

class HelloWorldWorkflow < Temporal::Workflow
  def execute
    result = HelloActivity.execute!('World')

    return result
  end
end
