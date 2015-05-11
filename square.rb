require 'pp'

class Rectangle
  attr_accessor :number_of_sides

  def initialize
    @number_of_sides = 4
  end

  def draw!
  end

  def area

  end

  def perimeter
  end
end

class Square < Rectangle
end


shapes = [Square.new, Square.new, Rectangle.new]

puts "Rectangles only"
shapes.each do |shape|
  if shape.is_a? Rectangle
    puts "I'm a rectangle! #{shape.inspect}"
  end
end
