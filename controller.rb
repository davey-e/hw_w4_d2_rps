require('sinatra')
require('sinatra/contrib/all') if development?()
require('pry-byebug')
require_relative('./models/game.rb')

get('/game/:hand1/:hand2') do
  game = Game.new(params[:hand1], params[:hand2])
  @game_result = game.play_game()
  erb(:result)
end
