require 'temporal-ruby'
require 'net/http'

FLAKY_URI = 'http://localhost:4567/flaky'

class FlakyActivity < Temporal::Activity
  def execute
    uri = URI(::FLAKY_URI)
    res = Net::HTTP.get_response(uri)
    if res.code_type == Net::HTTPOK
      return "Success"
    else
      raise "Error fetching service"
    end
  end
end
