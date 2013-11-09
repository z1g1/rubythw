def add(a,b)
	puts "ADDING #{a} + #{b}"
	a + b
end

def subtract(a,b)
	puts "SUBTRACTING #{a} - #{b}"
	a -b
end

def multiply(a,b)
	puts "MULTIPLYING #{a} - #{b}"
	a * b 
end 

def divide(a,b)
	puts "DIVIDING #{a} / #{b}"
	a / b
end

puts "Lets do some math with just functions"

age = add(30, 5)
height = subtract(78,4)
weight = multiply(90,2)
iq = divide(100,2)

puts "Age: #{age} height #{height} weight #{weight} iq #{iq}"

# A puzzle for extra credit
puts "here is a puzzle"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
puts "that beocmes #{what} can you do it by hand?"
