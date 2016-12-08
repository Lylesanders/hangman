require "sinatra"
require_relative "hangman.rb"

get '/' do
erb :word
end

post '/word' do
    hello
end
