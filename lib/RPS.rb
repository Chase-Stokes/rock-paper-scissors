require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require 'pry'

class RPS
  def initialize()
    @p1_score=0
    @p2_score=0
    @draw_score=0   
  end
  def comp_choice
    arr_choices=["rock","paper","scissors"]
    arr_choices[rand(0..2)]
  end
  def p1_score
    @p1_score
  end
  def p2_score
    @p2_score
  end
  def draw_score
    @draw_score  
  end
  def wins?(p1,p2)
    if (p1=="rock" && p2=="scissors") or (p1=="scissors" and p2=="paper") or (p1=="paper" and p2=="rock") #player one wins
      @p1_score+=1
      #true 
      "You won this round!"
    elsif (p2=="rock" && p1=="scissors") or (p2=="scissors" and p1=="paper") or (p2=="paper" and p1=="rock") #player two wins
      @p2_score+=1
      #false
      "You lost this round!"
    else  #players tie
      @draw_score+=1
      "It's a draw."  
    end    
  end
end