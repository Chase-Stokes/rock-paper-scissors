require ('rspec')
require ('RPS')
require("capybara/rspec")

describe('#RPS') do
  game = RPS.new()
  it("returns true if rock is the object and scissors is the argument") do
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect(game.wins?("paper", "rock")).to(eq(true))
  end
  it("returns false if rock is the object and paper is the argument") do
    expect(game.wins?("rock", "paper")).to(eq(false))
  end
  it("returns 'It's a draw' if rock and rock are arguments") do
    expect(game.wins?("rock", "rock")).to(eq("It's a draw."))
  end
  it("returns a randoms choice from arr_choice") do
    expect(game.comp_choice()).to(eq("rock"))
  end
end