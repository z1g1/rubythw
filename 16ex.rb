# bring in the filename from the argument
filename = ARGV.first
# assign the scriptname to script
script = $0

# Print a warning that we are going to erase the file and explain how to cancel it
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CRTL-C (^C)"
puts "If you want that hit RETURN"

# print out a ? and ask for confirmation
print "?"
STDIN.gets

# announce that the script is being opened
puts "Opening file...."
# open the file which was declared as filename and assign the content of it to target
target = File.open(filename, 'w')

# Print out that we're erasing the file
puts "Truncating the file. Goodbye!"
# erase the file
target.truncate(target.size)

# ask for three lines of text
puts "Now I'm going to ask you for three lines"

print "Line 1"; line1 = STDIN.gets.chomp()
print "Line 2"; line2 = STDIN.gets.chomp()
print "Line 3"; line3 = STDIN.gets.chomp()

# write them to the file
puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

# close down the file 
puts "And finally, we close it."
target.close()
