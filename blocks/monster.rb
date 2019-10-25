class Monster
  attr_reader :name, :actions  # do this so that it can read the attributes

  def initialize(name)
    @name = name
    @actions = {
        screams: 0,
        scares: 0,
        screams_back: 0,
        hides: 0
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
    puts "- Screams Back: #{actions[:screams_back]}"
    puts "- Hides: #{actions[:hides]}"
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

  def screams_back(&block)
    actions[:screams_back] += 3
    block.call
  end

  def hides(&block)
    actions[:hides] += 5
    print "The poor guy runs back to his cave. "
    yield self if block_given?  #  this makes the monster available to the block
  end

  def inspect
    "#{name}, #{actions}"
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

monster.screams_back do
  puts "Congratulations, you have scared the shit out of that poor little monster. You savage."
end

monster.hides do |m|
  puts "You're the real monster here."
  puts m.inspect  # this uses the monster self to be able to show the actions from the block and calls inspect method created
end

monster.print_scoreboard