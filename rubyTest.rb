=begin
print "Enter a Value: "
first_num = gets.to_i

print "Enter another value:"
second_num = gets.to_i

puts first_num.to_s + " + " + second_num.to_s + " = " +
(first_num + second_num).to_s

#Arithmetic Operators
puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 * 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s

numOne = 1.000
num99 = 0.99
puts numOne.to_s + " - " + num99.to_s + " = " + (numOne - num99).to_s

# 14 Digits of accuracy is the norm
big_float = 1.12345678901234
puts (big_float + 0.00000000000005).to_s

#Everything is object
puts 1.class
puts 1.234.class
puts "A String".class

#Constant start with uppercase
A_CONST = 3.14
A_CONST = 1.6
puts A_CONST

#returns a file object for writting
write_handler = File.new("yourSum.out", "w")

#puts the text in the file
write_handler.puts("Bla bla bla text").to_s

#closes the file
write_handler.close

#read data from file
data_from_file = File.read("yourSum.out")

puts "Data From File : " + data_from_file

#load to execute the code in another ruby file
load "rubyTest2.rb"

age = 12

if(age >= 5) && (age <=6)
  puts "Shut up kiddo!"
elsif(age >= 7) && (age <= 13)
  puts "Get your weapon ready!"
else
  puts "Go home!"
end

puts "T and F = " + (true && false).to_s
puts "T or F = " + (true|| false).to_s
puts "!true = " + (!true).to_s

#0 is equal, 1 is greater, -1 is less
puts "5 <=> 10 = " + (5<=>10).to_s

#unless
unless age > 4
  puts "No shcool!"
else 
  puts "Go to school!"
end

#condition in output
puts "You're young" if age < 30


# ----- CASE -------

print "Enter greeting: "
#removes /n from input
greeting = gets.chomp

#case is used when have a limited options
case greeting
when "Frensh", "french"
  puts "Bonjour"
  #without end it would check the next condition
  exit
when "Spanish", "spanish"
  puts "Hola"
  exit
else
  puts "Hello"
end


# -------- TERNARY OPERATOR ---------
age = 50

#Format (condition) ? "Returned if true" : "Returned if false"
puts (age >= 50) ? "Old" : "Young"


# -------- LOOP ------------
x = 1
#loops until break
loop do
  x += 1
  next unless (x % 2) == 0
  puts x
  
  break if x >= 10
end

# --------- WHILE LOOP --------
y = 1
while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
end

z = 1
begin
  z += 1
  next unless (z % 2) == 0
  puts z
end while z <=10

# ------ UNTIL LOOP ------
a = 1
until a >= 10
  a += 1
  next unless (z % 2) == 0
  puts a
end


# ----- FOOR LOOPS -------
#create array numbers
numbers = [1,2,3,4,5]
#cycles through item number
for number in numbers
  puts "hello #{number}"
end

grocieries = ["banana", "potatoes", "pasta", "tomatoes"]
grocieries.each do |food|
  puts "Get some #{food}"
end

(0..10).each do |ii| 
  puts "# #{ii}"
end


# ------ FUNCTION -------
def add_nums(num_1, num_2)
  return num_1.to_i + num_2.to_i
end

puts add_nums(3,4)

#var passed by value can't changed
x = 1
def change_x(x)
  x = 4
end

change_x(x)

puts "x = #{x}"

# ---- EXCEPTION ------
print "Enter a number: "
first_num = gets.to_i
print "Enter another: "
second_num = gets.to_i
begin
  answer = first_num / second_num
rescue #error devided by zero
  puts "You can't devide by zero"
  exit
end

puts "#{first_num} / #{second_num} = #{answer}"


#check throw ex with raise
def check_age(age)
  raise ArgumentError, "Enter valid age" unless age > 0
end

#catch with rescue

begin
  check_age(-1)
rescue ArgumentError
  
  puts "That's not valid age"
end



# ----- STRINGS -------
puts "Add them! #{4 + 5}"
puts 'Add them! #{4 + 5}'

multi_line = <<EOM
Ini
adalah
perbuatan yang
tidak terpuji
EOM

puts multi_line

first_name = "Derek"
last_name = "Banas"

full_name = first_name + " " + last_name

middle_name = "Justin"

full_name = "#{first_name} #{middle_name} #{last_name}"
puts full_name

puts full_name.include?("JustinZ")

puts full_name.size

puts "Vow: " + full_name.count("aeiou").to_s
puts "Cons: " + full_name.count("^aeiou").to_s

puts full_name.start_with?("Derek")

puts "Index: " + full_name.index("Banas").to_s

puts "a == a: " + ("a" == "a").to_s

puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s

puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

puts full_name.rjust(25, '.')
puts full_name.ljust(25, '.')
puts full_name.center(25, '.')

puts full_name.chomp
puts full_name.chomp('as')

puts full_name.delete("a")

name_array = full_name.split(//)
puts name_array

name_array = full_name.split(/ /)
puts name_array

puts "a".to_i
puts "2".to_f
puts "2".to_sym

# Escape sequences
# \\  Backslash
# \'  Single-quote
# \"  Double-quote
# \a  Bell
# \b  Backspace
# \f  Formfeed
# \n  Newline
# \r  Carriage
# \t  Tab
# \v  Vertical tab



# ----- Classes / Object / Inh -----

class Animal
  
  def initialize
    puts "Creating a new animal"
  end
  
  def set_name(new_name)
    #set value for an instance var
    @name = new_name
  end
  
  def get_name
    @name
  end
  
  #provides another way to set value
  def name=(new_name)
    #eliminate bad input
    if new_name.is_a?(Numeric)
      puts "Name can't be a number bitch!"
    else
      @name = new_name
    end
  end
  
  #provides another way to get value
  def name
    @name
  end
end


#create a new animal object
cat = Animal.new

#set the animal name
cat.set_name("Pikachu")

#get_name return
puts cat.get_name

#using alternative way to set name
cat.name = "Bakada"

#using alternative way to get name
puts cat.name

class Dog
  #shortcut for creating getter func
  attr_reader :name, :height, :weight
  
  #shortcut for creating setter func
  attr_writer :name, :heightm, :weight
  
  #setter and getter func
  attr_accessor :name, :height, :weight
  
  def bark
    return "generic bark.."
  end
end

rover = Dog.new
rover.name = "Rover"
puts rover.name
puts rover.bark

#inheritance..

class GermanShepard < Dog
  #just overwrite method 
  def bark
    return "loud bark..."
  end
end

max = GermanShepard.new
max.name = "Max"
printf "%s goes %s \n", max.name, max.bark

# ---- Module ----- 
require_relative "human"
require_relative "smart"

module Animal
  def make_sound
    puts "Grrrr.."
  end
end

#inherit module method with include / prepend

class Dog
  include Animal
end

rover = Dog.new
rover.make_sound

class Scientist
  include Human
  prepend Smart #any method in smart will superseed here
  
  def act_smart
    return "E = fucking bitch slap!"
  end
end

einstein = Scientist.new
einstein.name = "Albert"

puts einstein.name

einstein.run

puts einstein.name + " says " + einstein.act_smart


# ----- POLYMORPHISM -----
class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end

class Cardinal < Bird
  def tweet
    puts "Tweet... tweet.."
  end
end

class Parrot < Bird
  def tweet
    puts "Squaawwkk..."
  end
end

generic_bird = Bird.new
generic_bird.tweet(Cardinal.new)
generic_bird.tweet(Parrot.new)

# ------ SYMBOL ------
:derek

puts :derek
puts :derek.to_s
puts :derek.class
puts :derek.object_id

# ------- ARRAY -------

array_1 = Array.new
array_2 = Array.new(5) #nil value
array_3 = Array.new(5, "empty") #empty value
array_4 = [1, "two", 3, 5.5] #store multi object types

puts array_1
puts array_2
puts array_3
puts array_4
puts array_4[2]

puts array_4[1,3].join(", ")

puts array_4.values_at(0,1,3).join(", ")

#add 0 at the begining
array_4.unshift(0) 
puts array_4.join(", ")

#remove first item
array_4.shift()
puts array_4.join(", ")


#add 100 and 200 to the end
array_4.push(100, 200)
puts array_4.join(", ")

#remove last item
array_4.pop
puts array_4.join(", ")

#add array into array
array_4.concat(["uye", 60, 80])
puts array_4.join(", ")

#array method
puts "Array Size: " + array_4.size.to_s
puts "Array Contain 100: " + array_4.include?(100).to_s
puts "How Many 100?: " + array_4.count(100).to_s
puts "Array Empty: " + array_4.empty?.to_s

#print array
p array_4

#output array in loop
array_4.each do |val|
  puts val
end

# ----------------- HASH --------------------

#has is a collection objects in pairs
number_hash = { "PI" => 3.14, 
                "Golden" => 1.618, 
                "e" => 2.718 }
puts number_hash["PI"]

superheroes = Hash["Clark Kent", "Superman", "Bruce Wayne", "Batman"]
puts superheroes["Bruce Wayne"]

#Add to a hash
superheroes["Barry Allen"] = "Flash"
puts superheroes["Barry Allen"]

#set a default key value
samp_hash =  Hash.new("No such key..")
puts samp_hash["Dog"]

superheroines = Hash["Lisa Morel", "Aquagirl", "Betty Kane", "Batgirl"]

#combine 2 hashes

#superheroes.merge -> no overwritting
superheroes.update(superheroines)

#print value
superheroes.each { |key, value| puts key.to_s + ' : ' + value }

puts "Has Key Lisa Morel: " + superheroes.has_key?("Lisa Morel").to_s
puts "Has Value Batman: " + superheroes.has_value?("Batman").to_s
puts "Is Hash Empty: " + superheroes.empty?.to_s
puts "Size of Hash: " + superheroes.size.to_s

#delete key value
superheroes.delete("Barry Allen")

puts "Size of Hash now: " + superheroes.size.to_s
               


# ------- Enumerable ------

#class that include the Enumerable module gain collection capabilites

class Menu
  include Enumerable
  
  #each provides items one at a time
  def each
    yield "pizza"
    yield "spagheti"
    yield "salad"
    yield "bread"
    yield "water"
  end
end

menu_options = Menu.new

#cycle through all the options
menu_options.each { |item| puts "would you like: #{item}" }

#check if we have pizza
p menu_options.find { |item| item == "pizza" }

#return items 5 letters in length
p menu_options.select { |item| item.size <= 5 }

#return items that meet the criteria
p menu_options.reject { |item| item.size <= 5 }

#return the first item
p menu_options.first

#return first 2
p menu_options.take(2)

#return ^first 2
p menu_options.drop(2)

#return min item
p menu_options.min

#return max item
p menu_options.max

#sort the items
p menu_options.sort

#return each item in reverse order
menu_options.reverse_each { |item| puts item}

=end

# ------ FILE I/O ------

#create a file for writting

file = File.new("authors.out", "w")

#add lines
file.puts "william Shakespeare"
file.puts "Agatha Christie"
file.puts "Barbara Cartland"

#close file
file.close

#output everything in the file
puts File.read("authors.out")

#open file for appending
file = File.new("authors.out", "a")
file.puts "Danielle Steel"
file.close
puts File.read("authors.out")

#create another file 
file = File.new("author_info.out", "w")
file.puts "William Shakespeare,English,plays and poetry,4 billion"
file.puts "Agatha Christie,English,who done its,4 billion"
file.puts "Barbara Cartland,English,romance novels,1 billion"
file.puts "Danielle Steel,English,romance novels,800 million"
file.close

#cycle through the data
File.open("author_info.out") do |record|
  record.each do |item|
    
    #split with comas
    name, lang, speciality, sales = item.chomp.split(',')
    puts "#{name} was an #{lang} author that specialized in #{speciality}. They sold over #{sales} books."
  end
end
