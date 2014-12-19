require 'rubygems'
require 'twilio-ruby'
 
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'ACf11e4f1181798032cf1cdf339b0f8320'
auth_token = 'cd7a8c0eb1b007b1479e97fb484b08c1'
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.messages.create(:body => "Charlie please?! I love you <3, Twilio API",
    :to => "+447446888071",     # Replace with your phone number
    :from => "+441978280059")   # Replace with your Twilio number
puts message.sid