# ToyRobot Coding Challenge

Toy robot is a popular coding exercise for junior developers in Melbourne. This is my solution, which is entirely based on Ryan Bigg's book, which you can find and purchase [here](https://leanpub.com/toyrobot/).

The challenge was completed on TDD/BDD principles, by 'brute forcing' our way through tests and then refactoring code.

If you would like to try the challenge yourself, you will find the original instructions below.

The application currently reads the toy robot instructions from a `.txt` file. In the future I have plans to upgrade the gem to a command line application, allowing users to issue commands from the terminal.

To run this version clone the repository:

```
git clone git@github.com:bencefulop/toy-robot-challenge.git
cd toy-robot-challenge
```

and then run:

```
bundle install
```

You can run Rspec tests by typing `rake` in the command line.

# Original Instructions

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'toy_robot'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install toy_robot

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Problem Description & Constraints

- The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
- There are no other obstructions on the table surface.
- The robot is free to roam around the surface of the table.

Any movement that would result in the robot falling from the table is prevented, however further valid movement commands are still allowed.

The application reads a file using a name passed in the command line. The following commands are valid:

```
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
```

- PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
- The origin (0,0) is the SOUTH WEST most corner.
- All commands are ignored until a valid PLACE is made.
- MOVE will move the toy robot one unit forward in the direction it is currently facing.
- LEFT and RIGHT rotates the robot 90 degrees in the specified direction without changing the position of the robot.
- REPORT announces the X,Y and F of the robot.
- Input is from a .txt file.

The file is assumed to have ASCII encoding. It is assumed that the PLACE command has only one space, that is PLACE 1, 2, NORTH is an invalid command. All commands must be in upcase, all lower and mixed case commands will be ignored.

Example input from `commands.txt`:

```
PLACE 0,0,NORTH
MOVE
RIGHT
MOVE
LEFT
MOVE
REPORT
```

Example output on `STDOUT`:

```
Robot is currently at (1, 2) and it's facing NORTH
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/toy_robot.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
