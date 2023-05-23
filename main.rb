require 'temporal-ruby'

class HelloActivity < Temporal::Activity
  def execute(name)
    puts "Hello #{name}!"

    return nil
  end
end


