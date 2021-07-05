require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'


class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    #Here is where we are able to create a new object based on what the user posts
    # NOTE: We had to add the require_relative to point to our models/text_analyzer.rb on line 2. 
    # This is how we can call Text.Analyzer.new
    @analyzed_text = TextAnalyzer.new(params[:user_text]) 
    # Create an instance variable called @analyzed_text
    # Set the instance variable equal to a new TextAnalyzer object that takes in the user input (params[:user_text])
 
  erb :results
  end
end
