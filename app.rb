require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions 
    set :session_secret, "pword"
  end 
  
  get '/' 
    erb :index 
  end 
  
  post '/checkout' do
    @sessions = session 
    item = params["item"]
    @session["item"]="item"
    
    
    erb :checkout
  end   

end     