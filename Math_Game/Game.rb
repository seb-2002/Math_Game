require './Question.rb'

class Game
  
  attr_reader :player_2, :player_1, :player_1_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    
  end
  
  def start
    start = $stdin.gets.chomp
    if start == 'start'
      player_1.liven_up
      player_2.liven_up
      @player_1_turn = true
      self.newTurn
    elsif start == 'exit'
      puts "Sorry to see you go!"
      # and unmount everything somehow?
    end
  end

  def newTurn
    play_string = this_player == player_1 ? "Let's go #{player_1.name}!" : "You got this #{player_2.name}!"
    puts play_string
    q = Question.new
    puts q.questionString
    res = $stdin.gets.chomp.to_i
    correct = q.checkAnswer(res)
    self.lose_life? correct
    puts correct ? "Nicely done, you aced it!" : "Damn, that is not correct. Down one life!"
    if this_player.alive?
      puts "#{player_1.name} : #{player_1.lives} / 3  ----- #{player_2.name} : #{player_2.lives} / 3"
      self.next_turn
    else 
      game_over
    end
  end

  def this_player
     this_player = @player_1_turn ? player_1 : player_2
  end

  def game_over
    puts player_1.lives <= 0 ? "Player 2 is the winner!" : "Player 1 is the winner!"
  end

  # private

  def next_turn
    @player_1_turn = !@player_1_turn
    newTurn 
  end

  def lose_life? (correct)
    if !correct
      this_player.lose_life
    end
  end


end