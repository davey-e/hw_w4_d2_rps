class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play_game()
    @draw = 'nobody'
    return @hand2 if @hand1 == 'rock' && @hand2 == 'paper'
    return @hand1 if @hand1 == 'rock' && @hand2 == 'scissors'
    return @hand2 if @hand1 == 'paper' && @hand2 == 'scissors'
    return @hand1 if @hand1 == 'paper' && @hand2 == 'rock'
    return @hand2 if @hand1 == 'scissors' && @hand2 == 'rock'
    return @hand1 if @hand1 == 'scissors' && @hand2 == 'paper'
    return @draw if @hand1 == @hand2
  end

end
