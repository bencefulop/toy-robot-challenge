require 'spec_helper'

RSpec.describe ToyRobot::Simulator do
  let(:table) { ToyRobot::Table.new(5, 5) }
  subject { ToyRobot::Simulator.new(table) }

  it 'places the robot onto a valid position' do
    expect(ToyRobot::Robot).to receive(:new)
      .with(0, 0, 'NORTH')
      .and_return(double)
    subject.place(0, 0, 'NORTH')
    expect(subject.robot).not_to be_nil
  end

  it 'cannot place the robot onto an inposition' do
    expect(ToyRobot::Robot).not_to receive(:new)
    subject.place(5, 5, 'NORTH')
    expect(subject.robot).to be_nil
  end
end
