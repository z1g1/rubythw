# bring in the filename from the argument
filename = ARGV.first
# assign the scriptname to script
script = $0


# announce that the script is being opened
puts "Opening file...."
# open the file which was declared as filename and assign the content of it to target
target = File.read(filename)

# Print out the content of the file
puts target
