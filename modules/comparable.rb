class Player
  include Comparable

  attr_accessor :name, :score

  def <=>(other_player)
    score <=> other_player.score
  end

  def initialize(name, score)
    @name = name
    @score = score
  end
end

player1 = Player.new("BMO", 100)
player2 = Player.new("Jake", 200)

puts "Player1 > Player2: %s" %(player1 > player2)