require 'sinatra'

module Mirror
  class API < Sinatra::Base
    post '/app' do
      appname = params[:name]

      # check if it's a valid name
      # and it's not used

      # create an user and repository for the app

      # return data of the created repo
    end

    get '/apps' do
      # list all apps
    end

    def start!
      run!
    end
  end
end
