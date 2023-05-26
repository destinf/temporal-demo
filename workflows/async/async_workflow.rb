require './workflows/async/async_activity_1'

class AsyncWorkflow < Temporal::Workflow
  def execute
    result = AsyncActivity1.execute!

    return result
  end
end
