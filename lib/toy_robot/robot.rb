module ToyRobot
  class Robot
    attr_reader :east, :north

    def initialize(east = 0, north = 0)
      @east = east
      @north = north
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -= 1
    end

    def move_north
      @north += 1
    end

    def move_south
      @north -= 1
    end
  end
end
