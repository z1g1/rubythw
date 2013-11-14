i = 0
numbers = []

while i < 6
	puts "At the top i is #{i}"
	numbers.push(i)

	i = i + 1

	puts "numbers now: #{numbers}"
	puts "at the bottom i is #{i}"
end

puts "The NUmbers"

for num in numbers
	puts num 
end
