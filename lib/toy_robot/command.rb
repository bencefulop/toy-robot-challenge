require 'English'

module ToyRobot
  class Command
    def self.process(command)
      case command
      when /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/
        [:place, $LAST_MATCH_INFO[:x].to_i, $LAST_MATCH_INFO[:y].to_i, $LAST_MATCH_INFO[:direction]]
      when /\AMOVE\Z/ then [:move]
      when /\ALEFT\Z/ then [:turn_left]
      when /\ARIGHT\Z/ then [:turn_right]
      when /\AREPORT\Z/ then [:report]
      else
        [:invalid, command]
      end
    end
  end
end
