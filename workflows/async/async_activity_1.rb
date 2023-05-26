require 'temporal-ruby'

class AsyncActivity1 < Temporal::Activity
  def execute
    # Do something that requires an external service, like having a human check
    puts "AsyncActivity1 requires attention: #{activity.async_token}"
    activity.async
  end
end
