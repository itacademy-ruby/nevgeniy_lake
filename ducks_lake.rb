# encoding: utf-8
# Duck
 
module Flying
  def fly
    'Flying'
  end

  def reactive_fly 
    "reactive_fly"
  end

  def mechanical_fly
    "mechanical_fly"
  end
end

module Quacking
  def quacking
    'Quacking'
  end
end
 
module Swiming
  def swiming
    'Swiming'
  end
end

module Eating
  def eating
    'Eating'
  end
end



class Duck
  def fly
    "Can't Fly"
  end
 
  def swiming
    "Can't swim"
  end
 
  def quacking
    "Can't quack"
  end

  def eating
    "Can't Eating"
  end

  def reactive_fly 
    "Can't reactive_fly"
  end

  def mechanical_fly
    "Can't mechanical_fly"
  end
end
 
class RealDuck < Duck
include Flying
include Quacking
include Swiming
include Eating
end
 
class RubberDuck < Duck
include Quacking
include Swiming
end
 
class WoodDuck < Duck
include Swiming
end

class RobotsDuck < Duck
include Flying
include Quacking
include Swiming
include Eating
end
 
 
ducks ||= []
ducks << RealDuck.new
ducks << RubberDuck.new
ducks << WoodDuck.new
ducks << RobotsDuck.new
 
ducks.each do |duck|
puts "#{duck.class} #{duck.swiming}"
puts "#{duck.class} #{duck.quacking}"
puts "#{duck.class} #{duck.reactive_fly}"
puts "#{duck.class} #{duck.mechanical_fly}"
puts "#{duck.class} #{duck.eating}"

 
end