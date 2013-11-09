def prompt
	print "> "
end

puts "You enter a dart room with two doors.  do you go through door # 1 or #2"

prompt; door = gets.chomp

if door == "1"
	puts "there's a gian bear here eatin a chees cake.  What do you do?"
	puts "1. take the cake"
	puts "2. Scream at the bear"

	prompt; bear = gets.chomp

	if bear == "1"
		puts "The bear eats your face off, good job!"
	elsif bear == "2"
		puts "the bear eats you legs off. ggod job"
	else 
		puts "well, doing #{bear} is probably better. Bear runs away"	
	end

elsif door == "2"
	puts "You stare into the endless abyss at cthulu's retina"
	puts "1. blueberries"
	puts "2. yellow jacket clothespins"
	puts "3. understanding revolvers yelling melodies"

	prompt; insanity = gets.chomp

	if insanity == "1" or insanity == "2"
		puts "Your body survives powered by a mind of jello.  Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck good job"
	end

else
	puts "You stumble around and fall into a pit and die.  god job!"
end 
