require 'mailgun'
mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']

# Define your message parameters
message_params =  { from: 'angelr1076@gmail.com',
                    to:   'angelr1076@gmail.com',
                    subject: 'This is a test from NYCDA CLASS',
                    text:    'This is a working email sent from Bryans'
                  }

# Send your message through the client
mg_client.send_message 'sandbox5de09cdea4b04c9a9afc1228544224f0.mailgun.org', message_params
