require 'temporal-ruby'

class HelloActivity < Temporal::Activity
  def execute(name)
    str = "Hello #{name}!"
    puts str
    return str
  end
end

