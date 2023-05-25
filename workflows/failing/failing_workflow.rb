require './workflows/failing/failing_activity'

class FailingWorkflow < Temporal::Workflow
  def execute
    result = FailingActivity.execute!

    return nil
  end
end
