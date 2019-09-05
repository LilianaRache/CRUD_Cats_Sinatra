require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:cats.sqlite3"
Dir[__dir__+"/models/*.rb"].each {|file| require file }


get '/cats' do
@cats = Cat.all
    erb :index
end

get '/cats/new' do
    erb :new
end

post '/cats' do
    #create
    p "estoy aca"
    p params

  @cat=Cat.create(nombre: params["nombre"], raza: params["raza"], color: params["color"], edad: params["edad"])
  @cats = Cat.all
  erb :index
end

get '/cats/:id' do
  Cat.find_by()
end

get '/cats/:id/edit' do
    #edit
end

put '/cats/' do
    #update
    @cat = Cat.find(1)
    @cat.change_name
end

patch '/cats/' do
    #update
end

delete '/cats/' do
    #destroy
end
