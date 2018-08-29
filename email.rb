require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'angelr1076@gmail.com')
to = Email.new(email: 'angelr1076@gmail.com')
subject = 'NYCDA test email'
content = Content.new(type: 'text/plain', value: 'this is a test email from nycda class.')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers
