require 'sinatra'

FLOOR_WAIT = 3 # Wait at least 3 seconds 

get '/slow' do
  wait_seconds = Random.rand(10) + FLOOR_WAIT
  puts "Choosing to wait #{wait_seconds} seconds"
  sleep(wait_seconds)
  "Waited #{wait_seconds} seconds"
end

get '/flaky' do
  if Random.rand(2) == 0
    # Flake
    puts "Flake"
    500
  else # Success
    puts "Success"
    "Success"
  end
end
