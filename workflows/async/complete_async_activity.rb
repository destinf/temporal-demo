require './configuration'

# Assume that the first param passed in is the async token

async_token = ARGV[0]
Temporal.complete_activity(async_token, "MYRESULT")
