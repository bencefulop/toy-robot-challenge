require 'spec_helper'

RSpec.describe ToyRobot::Robot do
  subject { ToyRobot::Robot.new(0) }

  it 'moves 3 spaces east' do
    3.times { subject.move_east }
    expect(subject.position).to eq(3)
  end

  it 'moves 4 spaces east' do
    4.times { subject.move_east }
    expect(subject.position).to eq(4)
  end

  it 'moves 3 spaces west' do
    3.times { subject.move_west }
    expect(subject.position).to eq(-3)
  end
end
