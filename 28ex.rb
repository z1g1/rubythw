puts "this will be true"
puts true and true

puts "this will be false"
puts false and true

puts "this will be false"
puts 1 ==1 and 2 == 1

puts "this will be true"
puts "test" == "test"

puts "this will be true"
puts 1 == 1 or 2 != 1

puts "this will be true"
puts true and 1 == 1

puts "this will be false"
puts false and 0 != 0

puts "this will be true"
puts true or 1 == 1

puts "this will be false"
puts "test" == "testing"

puts "this will be false"
puts 1 != 0 and 2 == 1

puts "this will be true"
puts "test" != "testing"

puts "this will be false"
puts "test" == 2

puts "this will be false"
puts not (true and false)

puts "this will be false"
puts not (1 == 1 and 0 != 1)

puts "this will be false"
puts not (10 == 1 or 1000 == 1000)

puts "this will be true"
puts not (1 != 10 or 3 == 4)

puts "this will be true"
puts not ("testing" == "testing" and "Zed" == "cool guy")

puts "this will be true"
puts 1 == 1 and not ("testing" and "Zed" == "Cool Guy")

puts "this will be false"
puts "chunky" == "bacon" and not (3 == 4 or 3 == 3)

puts "this will be false"
puts 3 == 3 and not ("testing" == "testing" or "Ruby" == "fun")
