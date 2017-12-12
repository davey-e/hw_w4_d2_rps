require ("minitest/autorun")
require ("minitest/rg")
require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def setup()
    @game1 = Game.new('rock', 'paper')
    @game2 = Game.new('rock', 'scissors')
    @game3 = Game.new('paper', 'scissors')
    @game4 = Game.new('paper', 'rock')
    @game5 = Game.new('scissors', 'rock')
    @game6 = Game.new('scissors', 'paper')
    @game7 = Game.new('rock', 'rock')
    @game8 = Game.new('paper', 'paper')
    @game9 = Game.new('scissors', 'scissors')

  end

  def test_rock_paper()
    assert_equal('paper', @game1.play_game())
  end
  def test_rock_scissors()
    assert_equal('rock', @game2.play_game())
  end
  def test_paper_scissors()
    assert_equal('scissors', @game3.play_game())
  end
  def test_paper_rock()
    assert_equal('paper', @game4.play_game())
  end
  def test_scissors_rock()
    assert_equal('rock', @game5.play_game())
  end
  def test_scissors_paper()
    assert_equal('scissors', @game6.play_game())
  end
  def test_rock_rock()
    assert_equal('nobody', @game7.play_game())
  end
  def test_paper_paper()
    assert_equal('nobody', @game8.play_game())
  end
  def test_scissors_scissors()
    assert_equal('nobody', @game9.play_game())
  end


end
