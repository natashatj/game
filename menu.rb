#require_relative './filters'
require_relative './player'
require_relative './question'
require 'colorize'

@repl_bool = true
@player_turns = 0

puts "Welcome to a super fun two player math game!"

print "Player 1 username: "
@username = gets.chomp
player1 = Player.new(@username)
player1.name = player1.name.colorize(:blue)
print "Player 2 username: "
@username = gets.chomp
player2 = Player.new(@username)
player2.name = player2.name.colorize(:blue)


puts "Let the games begin!"


while @repl_bool
  
  question = Question.new

  case @player_turns
  when 0
    print "#{player1.name}: "
  else 
    print "#{player2.name}: "
  end

  print question.to_string
  @user_input = gets.chomp.to_i

  if @player_turns == 0 && question.verify_answer(@user_input)
    puts "Right answer!".colorize(:green)
    player1.gain_point
    @player_turns += 1
  elsif @player_turns == 0 && !question.verify_answer(@user_input)
    puts "Wrong answer!".colorize(:red)
    player1.lose_life
    @player_turns += 1
  elsif @player_turns == 1 && question.verify_answer(@user_input)
    puts "Right answer!".colorize(:green)
    player2.gain_point
    @player_turns -= 1
  elsif @player_turns == 1 && !question.verify_answer(@user_input)
    puts "Wrong answer!".colorize(:red)
    player2.lose_life
    @player_turns -= 1
  end

  puts
  puts "The score is now:
        #{player1.name}: #{player1.lives} lives 
        #{player2.name}: #{player2.lives} lives"
  puts

  if player1.lives < 1 || player2.lives < 1
    puts "End of game."
  if player1.lives < 1
      puts "The winner is #{player2.name}"
  elsif player2.lives < 1
      puts "The winner is #{player1.name}"
  end

    puts "The final score is:
        #{player1.name}: #{player1.lives}
        #{player2.name}: #{player2.lives}"

    @repl_bool = false
  end
end



