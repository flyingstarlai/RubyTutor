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

=end


# ----- Classes / Object / Inh -----