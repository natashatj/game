require_relative './filters'
require_relative './player'
initialize_player
print "Let's play an addition game! "
while true do   
  puts prompt_player_for_answer
  print "Enter answer: "
  @user_input = gets.chomp
  puts verify_answer(@user_input)
  end_of_game
  break if @current_player[:lives] == 0 
  player_turns
end

#create loop so continuously asks questions

# $ ruby menu.rb
# Player1, How much is 12 + 3?
# Enter answer: 14
# You are wrong!
# Player2, How much is 19 + 5?
# Enter answer: 24
# You are correct!
# .... eventually one player will run out of lives.
# Player2 won.


# $ ruby menu.rb
# Player1, How much is 12 + 3?
# Enter answer: 14
# You are wrong! 2 lives left.
# Player2, How much is 19 + 5?
# Enter answer: 24
# You are correct! 3 live left.
# .... eventually one player will run out of lives.
# Player2 won.

