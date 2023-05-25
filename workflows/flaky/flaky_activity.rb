require 'temporal-ruby'
require 'net/http'

FLAKY_URI = 'http://localhost:4567/flaky'

class FlakyActivity < Temporal::Activity
  def execute
    if Random.rand(2) == 0
      return "Success"
    else
      raise "Error fetching service"
    end
  end
end
