require './flaky_workflow/flaky_activity.rb'

class FlakyWorkflow < Temporal::Workflow
  def execute
    result = FlakyActivity.execute!

    return result
  end
end
