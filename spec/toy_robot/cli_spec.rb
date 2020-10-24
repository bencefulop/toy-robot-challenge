require 'spec_helper'

RSpec.describe ToyRobot::CLI do
  subject { ToyRobot::CLI.new }

  context 'load_commands' do
    it 'loads commands from a file' do
      path = "#{File.dirname(__FILE__)}/../fixtures/commands.txt"
      commands = subject.load_commands(path)
      expect(commands).to eq([
                               [:place, 0, 0, 'NORTH'],
                               [:move],
                               [:turn_right],
                               [:turn_left],
                               [:report]
                             ])
    end
  end
end
