module ToyRobot
  class Robot
    attr_reader :east, :north, :direction

    def initialize(east = 0, north = 0, direction = 'NORTH')
      @east = east
      @north = north
      @direction = direction
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

    def move
      # We're able to dynamically call the necessary method by using send.
      send("move_#{@direction.downcase}")
    end

    def turn_left
      @direction = case @direction
      when "NORTH" then "WEST"
      when "SOUTH" then "EAST"
      when "WEST" then "SOUTH"
      when "EAST" then "NORTH"
      end
    end
  end
end
