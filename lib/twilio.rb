require 'rubygems'
require 'twilio-ruby'
 
module Twilio

	def send_sms(text)
		account_sid = 'ACf11e4f1181798032cf1cdf339b0f8320'
		auth_token = 'cd7a8c0eb1b007b1479e97fb484b08c1'
		@client = Twilio::REST::Client.new account_sid, auth_token
		message = @client.account.messages.create(
				:body => text,
		    :to => "+447446888071",     # My PHONE number
		    :from => "+441978280059" 		# My TWILIO number
		    )  
		puts message.sid
	end

end