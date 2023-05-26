require 'temporal-ruby'

class FlakyActivity < Temporal::Activity
  def execute
    if Random.rand(2) == 0
      return "Success"
    else
      raise "Error fetching service"
    end
  end
end
