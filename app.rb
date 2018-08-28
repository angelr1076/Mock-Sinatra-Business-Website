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
    @country = params[:country]
    @subject = params[:subject]

    params[:firstname]
    params[:lastname]
    params[:country]
    params[:subject]

    erb :message
end
