#5.times do puts "Test" end

#2.upto(5) { |number| puts number}

=begin
puts 10.0 / 3.0
x= 10
y = 3
puts x / y


x = "Test"
y = "String"
puts "Success!" if x + y == "TestString"

x = %q{this is a test
of the multi
line capabilites}

print x

puts "abc" * 10
puts 120.chr
puts ?a

x = "cat"
y = "dog"

puts "The #{x} versus the #{y} "

puts "You are #{"fucked " * 10}bro!"
=end

x = "This is a shit bro"
puts x.sub(/^../, 'Hello')
puts x.sub(/..$/, 'Hello')

"zyz".scan(/./) {|letter| puts letter}

"The car costs $1000 and the cat costs $10".scan(/\d+/) {|c| puts c }
"This is a test".scan(/[a-m]/) { |x1| puts x1 }

puts "String has vowels" if "This is a test" =~ /[aeiou]/
puts "String contains no digits" unless "This is a test" =~ /[0-9]/
puts "String has vowels" if "This is a test".match(/[aeiou]/)

