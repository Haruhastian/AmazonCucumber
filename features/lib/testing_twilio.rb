require 'twilio-ruby'

account_sid = "AC0da68050dc0cff78d0699db5ef583eb1"
auth_token = "582cddec2e93ea5832671b3f50078bc2"

@client = Twilio::REST::Client.new(account_sid, auth_token)
#Read: List all messages & fetch the body of the sid
# sid = ''
# @client.messages.list(limit: 1)
#        .each do |record|
#   sid = record.sid
# end
#
# messages_body = @client.api.messages("#{sid}").fetch.body
# regex_messages = messages_body.gsub(/\D/, '')
# puts regex_messages





# puts newest_messages_body

# @messages_fetch = @client.api.messages('').fetch
# puts @messages_fetch.body



# message = @client.messages.create(
#   body: "Hello from Nabilah. 1556.",
#   to: "+6281335368263",
#   from: "+19863864910")
#
# puts message.sid


## Initialize Twilio Client
# @client = Twilio::REST::Client.new(account_sid, auth_token)


# # Outboung-api
# @client.messages.list
#        .each do |messages_direction|
#   puts messages_direction.direction
# end

# @messages = @client.api.messages('SM00689190d5b85988f2241ec21132a99d').fetch

# puts @messages.body


#Read: List all messages
# messages = @client.messages.list(limit: 1)
# messages.each do |record|
#   puts record.sid
# end
