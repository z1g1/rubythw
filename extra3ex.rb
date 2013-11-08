# Print out the control line
puts "I will now count my chickens:"

# Print out the nubmer of hens by calculating the number
puts "Hens", 25 + 30 /6
# Print out the nubmer of roosters by calculating the number
# if you want ruby to perform floating point divission you need to declare one of the numbers as a point ie 4.0
# see http://stackoverflow.com/questions/5502761/why-is-division-in-ruby-returning-an-integer-instead-of-decimal-value
puts "Roosters", 100 - 25 * 3 % 4.0

# Print out the control line
puts "Now I will count the eggs:"

# Calculate and output the statement
puts 3 + 2 + 1  - 5 + 4.0 % 2 - 1 / 4 + 6

# Print out the control line
puts "Is it true that 3 + 2 < 5 - 7"

# Calculate and output the statement
puts 3 + 2 < 5 - 7

puts "What is 3 + 2?", 3 + 2
puts "What is 5 - 7?", 5 - 7

# Print out the control line
puts "Oh, that's what it's false."

# Print out the control line
puts "How about some more."

# Calculate and output the statement
puts "Is it greater?", 5 > -2
# Calculate and output the statement
puts "Is it greater or equal?", 5 >= -2
# Calculate and output the statement
puts "Is it less or equal?", 5 <= -2
