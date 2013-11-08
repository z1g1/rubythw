# get the filename variable from the first argument
# the ARGV.first seems to be a shortcut to do this 
filename = ARGV.first

# Define the prompt
prompt = "> "
# assigns to txt the contets of the file which was named in the argument
txt = File.open(filename)

# print out the filename
puts "Here's your file #{filename}"
# use the read method to print out the contents of the file 
puts txt.read()
