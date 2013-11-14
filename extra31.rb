def prompt
	print "> "
end

def faction_list
	puts "What faction do you play? Enter 1-12."
	puts "1. Cygnar"
	puts "2. Khador"
	puts "3. Cryx"
	puts "4. Mercenaries"
	puts "5. Menoth"
	puts "6. Retrebution"
	puts "7. Convergence"
	puts "8. Circle Oboros"
	puts "9. Legion of Everblight"
	puts "10. Skorne"
	puts "11. Trollbloods"
	puts "12. Minions"
end

faction_list

prompt;faction = gets.to_i

if faction <= 7
	puts "So you play Warmachine?"
	if faction == 1
		puts "You play the swans"
	end
	if faction == 2 
		puts "For the MOTHERLAND"
	end
	if faction == 3
		puts "CHEATER"
	end
	if faction == 4
		puts "All about the benjamins"
	end
	if faction == 5
		puts "Burn some heritics today?"
	end
	if faction == 6
		puts "\"Kill all humns\""
		puts "-Bender Bending Rodriguez "
	end
	if faction == 7
		puts "The New guys"
	end
elsif faction >8 and faction <= 12
	puts "So you play hordes"
else
	puts "That's not a legitimate answer"
end
