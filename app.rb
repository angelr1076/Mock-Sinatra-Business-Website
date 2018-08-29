require 'sinatra'

get '/' do
    erb :home, layout: :layout
end

get '/about' do
    erb :about, layout: :layout
end

get '/contact' do
    erb :contact, layout: :layout
end

get '/gallery' do
    erb :gallery, layout: :layout
end

post '/message' do
    puts params.inspect
    @firstname = params[:firstname]
    @lastname = params[:lastname]
    @email = params[:email]
    @country = params[:country]
    @subject = params[:subject]

    erb :message
end

post '/email' do
    puts params.inspect
    @from = params[:firstname, :lastname]
    @to = params[:email]
    @subject = params[:subject]
    @text = params[:subject]
    erb :message
end
