class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
  
end

class Dog < Pet
  def bark
    puts "Woof!"
  end
end

class Snake < Pet
  attr_accessor :length
end

snake = Snake.new
snake.name = "Sammy"
snake.length = 500
lassie = Dog.new
lassie.name = "Lassie"
lassie.age = 20

a_dog = Dog.new
a_dog.bark

puts a_dog.class

def dog_barking
  puts "Woff woff!"
end

dog_barking

