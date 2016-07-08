=begin

#!/usr/bin/ruby -w

# define a class
class Box
  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end

  # instance method by default it is public
  def getArea
     getWidth() * getHeight
  end

  # define private accessor methods
  def getWidth
     @width
  end
  def getHeight
     @height
  end
  # make them private
  private :getWidth, :getHeight

  # instance method to print area
  def printArea
     @area = getWidth() * getHeight
     puts "Big box area is : #@area"
  end
  # make it protected
  # protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()

=end




#!/usr/bin/ruby -w

# define a class
class Box
  BOX_COMPANY = "TATA Inc"
  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end
  # instance method
  def getArea
     @width * @height
  end
  def printArea
     @area = @width * @height * 2
     puts "Big box area is : #@area"
  end
end

# define a subclass
class BigBox < Box
  # add a new instance method
  def printArea
      super
     @area = @width * @height
     puts "Big box area is : #@area"
  end
  def printArea
    super
end
end
# create an object
box = BigBox.new(10, 20)

# print the area
box.printArea()
#puts box.getArea
#box.printArea2()