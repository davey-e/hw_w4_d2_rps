class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play_game()
    return 'Paper wins!' if @hand1 == 'rock' && @hand2 == 'paper'
    return 'Rock wins!' if @hand1 == 'rock' && @hand2 == 'scissors'
    return 'Scissors wins!' if @hand1 == 'paper' && @hand2 == 'scissors'
    return 'Paper wins!' if @hand1 == 'paper' && @hand2 == 'rock'
    return 'Rock wins!' if @hand1 == 'scissors' && @hand2 == 'rock'
    return 'Scissors wins!' if @hand1 == 'scissors' && @hand2 == 'paper'
    return 'Its a draw!' if @hand1 == 'rock' && @hand2 == 'rock'
    return 'Its a draw!' if @hand1 == 'paper' && @hand2 == 'paper'
    return 'Its a draw!' if @hand1 == 'scissors' && @hand2 == 'scissors'
  end

end
