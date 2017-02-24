require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "hmm"
  end

  get '/' do

    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    binding.pry
    @session = session
    erb :show
  end
end
