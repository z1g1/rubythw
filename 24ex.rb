puts "Let's practice verything"
puts "You'd eed to know \'bout escapes with \\ that do \n newlines and \t tabs"

poem = <<MULTI_LINE_STRING

\tThe lovely world
with lgic so firmly planted
cannont dscern \n the needs of love
not comprehend passon from intuition
and requires an explination
\n\t\bwhere ther is non .

MULTI_LINE_STRING

puts "----------------"
puts poem
puts "----------------"

five = 10 - 2 + 3 - 6
puts "this should be five: #{five}"

def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of #{start_point}"
puts "We\'d have #{beans} beans, #{jars} and #{crates}"

start_point = start_point / 10

puts "we can also do it this way"
puts "We\' have %s beans, %s jars, ad %s crates" % secret_formula(start_point)
