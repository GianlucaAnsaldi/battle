require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "hello!"
end

get '/secret' do
  "Secret page"
end

get '/about' do
  "About page"
end

get '/clients' do
  "Clients page"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end