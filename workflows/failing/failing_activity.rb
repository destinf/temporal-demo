require 'temporal-ruby'

class FailingActivity < Temporal::Activity
  retry_policy(
    interval: 1,
    backoff: 1,
    max_attempts: 3
  )

  def execute
    raise "Error executing"
  end
end
