require "pry"
require_relative 'config/environment'
require_relative "models/piglatinizer.rb"


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinized_words = PigLatinizer.new
    @results = piglatinized_words.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
