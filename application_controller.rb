require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about.erb' do
    erb :about
  end
  get '/contact.erb' do
    erb :contact
  end
  post '/result' do
    tags=params[:tags].split(", ")
    tags.map do |tag|
      tag.downcase
    end
    subject=params[:content]
    results_array=get_pods(tags,subject)
    @results=results_array
    erb :results
  end
  
  post '/return' do
    erb :index
  end
  
 
end