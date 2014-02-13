require 'sinatra'

module Mirror
  GITPATH = "/home/git"

  class API < Sinatra::Base
    set :port, 9494

    post '/app' do
      name = params[:name]

      app = App.new(name)
      app.create!
    end

    get '/apps' do
      # list all apps
    end

    def start!
      run!
    end
  end
end
