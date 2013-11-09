people = 30
cars = 40
busses = 15

if cars > people
	puts "We should take the cars"
elsif cars < people
	puts "we should not take the cars"
else 
	puts "We can't decide"
end

if busses > cars 
	puts "that's to many busses"
elsif busses < cars
	puts "maybe we could take the busses"
else 
	puts "We still can't decide"
end

if people > busses
	puts "Allrights let's just take the busses"
else
	puts "File, let's just stay home then"
end
