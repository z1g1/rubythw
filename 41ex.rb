# function to print out the prompt as you move through
def prompt()
	print "> "
end

# Function to call when the user is killed
def death()
	# an array of diffrent taunts which can be called insult the player
	quips = "You died.  You kinda suck at this.",
		"Nice job you died..jackass.",
		"Such a luser.",
		"I have a small puppt that's better at this."]
	# choose a random element from the array and print it
	puts quips[rand(quips.length())]
	#Exit the program safely 
	Process.exit(1)
end

def central_corridor()

	puts "The gothans of Planer Percal #25 have invaded you ship and destroyed"
	puts "your entire crew.  You are the last suviving member and your last"
	puts "mission is to get the neutron destruct bomb from the weapons armory."
	puts "put it in the bridge, and blow the shop up after getting into an "
	puts "escape pod"
	puts "\n "
	puts "You're running down the central corridor to the weapons armory when "
	puts "a Gothon jumps out, red scal skin, dark grimy teeth and an evil clown costume"
	puts "flowing around his hate filled vody .  He's blocking the door to the "
	puts "Armory and about to pull a weapon to blast you."

	prompt()
	action = gets.chomp()

	if action == "shoot"
		puts "quick on the draw you yank out your blaster and fire it at the Gothon."
		puts "His clown costume is flowing around his body, which throws"
		puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
		puts "makes him fly into an insane rage and blast your in the face until"
		puts "your are dead.  Then he heats you"
		return :death

	elsif action == "dodge"
		puts "Like a world class boxer you dodge, weave and slip right"
		puts "as the Goton's blaster cranks a laser past your head"
		puts "in the middle of your artful dodge your foot slips and you "
		puts "bang your head on the metal wall and pass out."
		puts "You wakeup shortly only to die as the Gothon stomps on "
		puts "your head and eats you"
		return:death

	elsif action = "tell a joke"
		puts "puts luckily for you they made you learn Goton in the academy"
		puts "You tell the one Goton joke that you know:"
		puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr"
		puts "The Gothon stops, tries not to laugh, then bursts out laughing and cannot moce."
		puts "While he's laughting you run up and shoot him square in the head"
		puts "putting him down, then jump through the Weapon Armory door."
		return :laser_weapon_armory
	else
		puts "DOES NOT COMPUTE!"
	end
end 

def laser_weapon_armory()
	puts "you do a dive roll into the Weapons Armory, crouch and scan the room"
	puts "for more Gothons that might be hiding.  It's dead quite, too quiet."
	puts "You stand up and run to the far side of the room and find the "
	puts "nertron bomb in it's container.  There's a keypad lock on the box"
	puts "and you need the code to get the bomb out.  If you get the code "
	puts "wrong 10 times then the lock closes forever and you can't"
	puts "get the bomb.  The code is 3 didgits"
	code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
	print "[KEYPAD]> "
	guess = gets.chomp()
	guesses = 0

	while guess != code and guesses < 10
		puts "WRONG"
		guesses += 1
		print "[KEYPAD >"
		guess = gets.chomp()
	end

	if guess == code
		puts "The container clicks open and the seal breaks, letting gas out."
		puts "You grab the neutron bomb and run as fast as you can to the"
		puts "bridge where you must place it in the right spot."
		return :the_bridge
	else
		puts "The lock buzzes one last time and they you hear a scikening"
		puts "melting sound as the mechanism is fused together."
		puts "you decide to sit there and finally the Gothons blow up the"
		puts " ship from thier shop and you die."
		return :death
	end
end

def the_bridge()
	puts "You burst onto the Bridge with the netron destruct bomb"
	puts "under your arm and surprise 5 Gothons who are trying to"
	puts "take control of the ship. Each of them has an even uglier"
	puts "clown costume than the last. They haven't pulled their"
	puts "weapons out yet, as they see the active bomb under your"
	puts "arm and don't want to set it off."

	prompt()
	action = gets.chomp()

	if action == "throw the bomb"
		puts "In a panic you throw the bomb at the group of Gothons"
		puts "and make a leap for the door. Right as you drop it a"
		puts "Gothon shoots you right in the back killing you."
		puts "As you die you see another Gothon frantically try to disarm"
		puts "the bomb. You die knowing they will probably blow up when"
		puts "it goes off."
		return :death

	elsif action == "slowly place the bomb"
		puts "You point your blaster at the bomb under your arm"
		puts "and the Gothons put their hands up and start to sweat."
		puts "You inch backward to the door, open it, and then carefully"
		puts "place the bomb on the floor, pointing your blaster at it."
		puts "You then jump back through the door, punch the close button"
		puts "and blast the lock so the Gothons can't get out."
		puts "Now that the bomb is placed you run to the escape pod to"
		puts "get off this tin can."
		return :escape_pod
	else
		puts "DOES NOT COMPUTE!"
		return :the_bridge
	end
end

def escape_pod()
	puts "You rush through the ship desperately trying to make it to"
	puts "the escape pod before the whole ship explodes. It seems like"
	puts "hardly any Gothons are on the ship, so your run is clear of"
	puts "interference. You get to the chamber with the escape pods, and"
	puts "now need to pick one to take. Some of them could be damaged"
	puts "but you don't havetime to look. There's 5 pods, which one"
	puts "do you take?"

	good_pod = rand(5)+1
	print "[pod #]> "
	guess = gets.chomp()

	if guess.to_i != good_pod
		puts "You jump into pod %s and hit the eject button." % guess
		puts "The pod escapes out into the void of space, then"
		puts "implodes as the hull ruptures, crushing your body"
		puts "into jam jelly."
		return :death
	else
		puts "You jump into pod %s and hit the eject button." % guess
		puts "The pod easily slides out into space heading to"
		puts "the planet below. As it flies to the planet, you look"
		puts "back and see your ship implode then explode like a"
		puts "bright star, taking out the Gothon ship at the same"
		puts "time.  You Won!"
	Process.exit(0)
	end
end

ROOMS = {
	:death => method(:death),
	:central_corridor = > method(:central_corridor),
	:laser_weapon_armory => method(:laser_weapon_armory),
	:the_bridge => method(:the_bridge),
	:escape_pod => method(:escape_pod)
}

def runner(map, start)
	next_one = start

	while true
		room = map[next_one]
		puts "\n----------------"
		next_one = room.call()
	end
end

runner(ROOMS, :central_corridor)

