require 'rubygems'
require 'sinatra/base'
require 'sinatra/content_for'

class MyApp < Sinatra::Base
  helpers Sinatra::ContentFor

  get '/' do
    @title = "Sinatra Skeleton Project"
    erb :index
  end

  not_found do
    # render static error file
    File.read(File.join('public', '404.html'))
  end

end
