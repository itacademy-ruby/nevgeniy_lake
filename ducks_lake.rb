# encoding: utf-8
# Duck
 
module Flying
def fly
'Flying'
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
end
 
class RealDuck < Duck
include Flying
include Quacking
include Swiming
end
 
class RubberDuck < Duck
include Quacking
include Swiming
end
 
class WoodDuck < Duck
include Swiming
end
 
 
ducks ||= []
ducks << RealDuck.new
ducks << RubberDuck.new
ducks << WoodDuck.new
 
ducks.each do |duck|
puts "#{duck.class} #{duck.swiming}"
puts "#{duck.class} #{duck.quacking}"
puts "#{duck.class} #{duck.fly}"
 
end