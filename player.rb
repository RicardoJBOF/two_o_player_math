#Starting with 3 lives
#Count the life of each player

class Player
  
  attr_accessor :name, :lives

  def initialize(name)
    self.name = name
    self.lives = 3
  end

  def new_life
    if self.lives > 0
      self.lives -= 1
    else
      false
    end 
  end


end

#Testing

# ricardo = Player.new('Ricardo')

# puts ricardo.name
# puts ricardo.lives

# ricardo.new_life

# puts ricardo.lives
