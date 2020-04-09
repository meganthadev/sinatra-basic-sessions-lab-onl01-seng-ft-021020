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
    @items = params["input"]
    session["name"]="Megan"
    @session = session 
    
    erb :checkout
  end   
end
    


end