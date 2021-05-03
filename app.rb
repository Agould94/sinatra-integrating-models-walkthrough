require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require 'pry'

class App < Sinatra::Base
set :views, settings.root + '/4:26-4:30/sinatra-integrating-models-walkthrough/views'
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
  
    @analyzed_text = TextAnalyzer.new(text_from_user)
  
    erb :results
    
  end 
  
end
#binding.pry