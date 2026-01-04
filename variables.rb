puts "What's your name?"
name = gets.chomp
puts "Welcome " << name

puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be #{age + 10}"
puts "In 20 years you will be #{age + 20}"
puts "In 30 years you will be #{age + 30}"
puts "In 40 years you will be #{age + 40}"

10.times { puts "Your name is #{name}"}

puts "What's your first name?"
first_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Welcome " << first_name + " " + last_name