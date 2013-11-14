the_count = [1, 2, 3, 4, 5]
fruits = ['aple', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# The fist kind of for look goes through an array
for number in the_count
	puts "this is the count #{number}"
end

# same as above, but using a block insted
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

# also we can go through mixed arays too
for i in change
	puts "I got #{i}"
end

# we can also buils arrays, first start with an empy one
elements = []

# then use a range object to do 0 to 5 counts
for i in (0..5)
	puts "Adding #{i} to the list"
	# push is a function that arrys understnad
	elements.push(i)
end

# now ew cen puts them out too
for i in elements
	puts "Element was: #{i}"
end
	
