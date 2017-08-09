require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post "/piglatinize" do
    @val = params[:user_phrase]
    # PigLatinizer.new(@val)

    @word = PigLatinizer.new
    # binding.pry

    erb :result
  end










end
