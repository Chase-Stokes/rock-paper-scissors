#!/usr/bin/env ruby
require('./lib/RPS.rb')

puts "Welcome to Rock, Paper, Scissors!"
puts "type 'quit' at any time to exit game" 
puts "type 'rock, paper, or scissors' to play against the computer"
game = RPS.new()
input=""
while (input!="quit")
  input=gets.chomp
  comp=game.comp_choice
  who_won=game.wins?(input,comp) 
  puts who_won+" Your tally: " + game.p1_score.to_s + " Computer tally: " + game.p2_score.to_s + " Draws: " + game.draw_score.to_s
end