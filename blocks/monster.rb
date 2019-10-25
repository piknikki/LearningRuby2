class Monster
  attr_reader :name, :actions  # do this so that it can read the attributes

  def initialize(name)
    @name = name
    @actions = {
        screams: 0,
        scares: 0
    }
  end

  def say(&block)
    print "#{name} says . . . "
    # yield  -- this does the same thing as block.call (pulls the block into this space)
    block.call
  end

  def print_scoreboard
    puts "----------------------------------"
    puts "#{name}'s' scoreboard"
    puts "----------------------------------"
    puts "- Screams: #{actions[:screams]}"
    puts "- Scares: #{actions[:scares]}"
    puts "----------------------------------"
  end

  def scream(&block)
    actions[:screams] += 1
    print "And then #{name} screams . . . "
    yield
  end

  def scare(&block)
    actions[:scares] += 1
    print "and scares you. *Boo*  "
    yield
  end
end

monster = Monster.new("Fluffy")

monster.say { puts "Welcome to my lair."}

# monster.scream { puts "Phllbbtttt."}  --  the following line does the same thing
monster.scream do
  puts "Phllbbtttt!"
end

monster.scare do
  puts "(You are now scared.)"
end

monster.print_scoreboard