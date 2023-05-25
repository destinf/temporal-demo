require './workflows/flaky/flaky_activity'

class FlakyWorkflow < Temporal::Workflow
  def execute
    result = FlakyActivity.execute!

    return result
  end
end
