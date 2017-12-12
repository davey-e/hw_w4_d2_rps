require('sinatra')
require('sinatra/contrib/all') if development?()
require('pry-byebug')

get('/game/:hand1/:hand2') do
  return 'Paper wins!' if params['hand1'] == 'rock' && params['hand2'] == 'paper'
  return 'Rock wins!' if params['hand1'] == 'rock' && params['hand2'] == 'scissors'
  return 'Scissors wins!' if params['hand1'] == 'paper' && params['hand2'] == 'scissors'
  return 'Paper wins!' if params['hand1'] == 'paper' && params['hand2'] == 'rock'
  return 'Rock wins!' if params['hand1'] == 'scissors' && params['hand2'] == 'rock'
  return 'Scissors wins!' if params['hand1'] == 'scissors' && params['hand2'] == 'paper'
  return 'Its a draw!' if params['hand1'] == 'rock' && params['hand2'] == 'rock'
  return 'Its a draw!' if params['hand1'] == 'paper' && params['hand2'] == 'paper'
  return 'Its a draw!' if params['hand1'] == 'scissors' && params['hand2'] == 'scissors'
end
