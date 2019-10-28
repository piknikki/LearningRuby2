# module SimpleModule
#   VERSION = 1.0
# end
#
#  access that with the constant resolution operator -- that's how we access something inside a module
#     SimpleModule::VERSION


module LaserBots
  module Console
    class Command

    end
  end

  module World
    class Player
      attr_reader :name

      def initialize(name)
        @name = name
      end
    end

    class Robot
      attr_reader :name

      def initialize(name)
        @name = name
      end

      def target_player(name)
        Player.new(name)
      end
    end
  end
end

player = LaserBots::World::Player.new("BMO")
robot = LaserBots::World::Robot.new("Dalek")
puts player.name
puts robot.name