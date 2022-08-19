# Import modules
$LOAD_PATH << '.'
require "Test7/area"

class Shape
include Area
    def initialize(length, width)
        @length = length
        @width = width
    end
    def calcArea()
        if (@length == @width)
            return square(@length)
        else
            return rectangle(@length, @width)
        end
    end
end

shape1 = Shape.new(5,10)
puts shape1.square(5)
puts shape1.calcArea()