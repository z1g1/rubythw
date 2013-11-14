cities = {'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'}

cities['NY'] = 'New York'
cities['OR'] = 'Protland'

def find_city(map, state)
	if map.include? state
		return map[state]
	else 
		return "Not Found"
	end
end

# ok pay attention!

cities[:find] = method(:find_city)

while true
	print "State? (ENTER to quite)"
	state = gets.chomp

	break if state.empty?

	# This line is the most imporatnt ever!
	
	puts cities[:find].call(cities, state)
end 
