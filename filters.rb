
# def initialize_player
#   @current_player = @players[0]
#   @other_player = @players[1]
# #set defaults here
# end
# #takes two random numbers between 1 and 20 and adds them 
# def generate_question
#   @num1 = rand(1..20) 
#   @num2 = rand(1..20)
#   @answer = (@num1 + @num2)
# end
# #determines turns based on index 
# def player_turns
#   if @players[0] == @current_player
#     @current_player = @players[1]
#     @other_player = @players[0]
#   else 
#     @current_player = @players[0]
#     @other_player = @players[1]
#   end
# end
# #determines who is the current player based on player_turns
# def current_player
#   @players[@current_player][:id]
# end
# #asks the current player what the answer is for num1 and num2 
# def prompt_player_for_answer
#   generate_question
#   puts "#{@current_player[:id]}: What is the answer for #{@num1} plus #{@num2}?"
# end
# #checks to see if player's answer matches answer from generate_question
# def verify_answer(user_input)
#   if user_input.to_i == @answer
#     puts "Right answer!"
#   else
#     @current_player[:lives] -= 1
#     puts "Wrong answer! Your score is now #{@current_player[:lives]} and your opponent's score is #{@other_player[:lives]}" 
#   end
 
# end
# #ends game if a player has zero lives left
# def end_of_game
#   if @current_player[:lives] == 0 
#     puts "End of game. The winner is #{@other_player[:id]} and #{@current_player[:id]}'s score is #{@current_player[:lives]}"
#   end 
# end




