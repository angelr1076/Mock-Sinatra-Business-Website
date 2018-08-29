require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get '/' do
    erb :home, layout: :layout
end

get '/about' do
    erb :about, layout: :layout
end

get '/gallery' do
    erb :gallery, layout: :layout
end

get '/contact' do
    puts params.inspect
    
    erb :contact
end

post '/contact' do
    puts params.inspect
    @from = params[:from]
    @to = params[:to]
    @subject = params[:subject]
    @message = params[:message]

    from = Email.new(email: 'angelr1076@gmail.com')
    to = Email.new(email: 'angelr1076@gmail.com')
    subject = 'NYCDA test email'
    content = Content.new(type: 'text/plain', value: @message)
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers

    erb :message
end
