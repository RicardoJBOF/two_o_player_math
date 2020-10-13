#Game logic here


class Game

  attr_accessor :player1, :player2, :players, :turn

  def initialize
    self.player1 = Player.new('Player1')
    self.player2 = Player.new('Player2')
    self.players = [self.player2, self.player1]
    self.turn = 0
  end


  def set_up
    
    puts "--------------- STARTING GAME ---------------"

    while (player1.lives > 0 and player2.lives > 0)

      #Rotating players
      current_player = self.players.rotate!(1).first.name
      self.turn += 1
      
      #Creating question
      puts "----------------- NEW TURN ------------------"
      question = Math_question.new
      question.create_math
      puts "Turn #{turn} - #{current_player}"
      question.print_question

      #Asking and collecting answer
      print "#{current_player} > "
      answer = gets.chomp.to_i

      #Comparing answer and deducting life
      if question.checking_result?(answer)
        puts "YES! You are correct."
      else
        puts "Seriously? Not!"
        if current_player == "Player1"
          player1.new_life
        else 
          player2.new_life
        end

      end

      #Show partial score
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

    end

  end

  def game_over
    puts "-----------------------------------------"

    if player1.lives > player2.lives
      puts "Player 1 wins with a score of #{player1.lives}/3"
    else
      puts "Player 2 wins with a score of #{player2.lives}/3"
    end

    puts "--------------- GAME OVER ---------------"
    puts "Good bye!"
  end

  def start
    set_up
    game_over
  end

    
end