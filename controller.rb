require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rps_model')
also_reload('./models/*')

get'/' do
  erb(:home)
end

get '/rpsgame/:hand1/:hand2' do
  game = RPSGame.new(params[:hand1],params[:hand2])
  @answer = game.check_win()
  puts @answer
  erb(:result)
end
