module ToyRobot
  class Simulator
    attr_reader :robot

    def initialize(table)
      @table = table
    end

    def place(east, north, facing)
      return unless @table.valid_location?(east, north)

      @robot = Robot.new(east, north, facing)
    end
  end
end
