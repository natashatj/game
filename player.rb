#Players and their respective info
# @players = [
# { id: "Player1",
#   lives: 3

#   },
#   { id: "PLayer2",
#     lives: 3

#   }
# ]
class Player
  attr_accessor(:name, :lives)
  
  def initialize(name, lives=3)
    @name = name
    @lives = lives
  end

  def gain_point
    @lives += 1
  end

  def lose_life
    @lives -= 1
  end
end