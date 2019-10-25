class Monster
  attr_reader :name  # do this so that it can read the attributes

  def initialize(name)
    @name = name
  end

  def say(&block)
    print "#{name} says . . .  "
    # yield  -- this does the same thing as block.call (pulls the block into this space)
    block.call
  end
end

monster = Monster.new("Fluffy")

monster.say { puts "Welcome to my lair."}