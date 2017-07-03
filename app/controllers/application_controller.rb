require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    # set :views, "./app/views"

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      # binding.pry
      @team_info = params[:team]
      erb :team
    end

end
