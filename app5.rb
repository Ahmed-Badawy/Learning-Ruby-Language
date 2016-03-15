
#there is the issue of cross-platform file seperators / or \
# to solve this problem we use File.join() like this:-
File.join('assets','ruby','file.rb') #called insted of "assets/ruby/file.rb"

#to get a path
puts "File path is: "+ __FILE__
puts "File expand path is: "+ File.expand_path(__FILE__)
puts "Dir path is: "+ File.dirname(__FILE__)


#second program is file permission
#you might need to use:-
# chmod: change permission
# chown: change owner

#file Access modes:-
# r : read from start (file must exist first)
# w : wipe it clean then write from start
# a : append from end
# r+: read & write but don't wipe file
# w+: wipe first then read & write
# a+: read & write from end of file


#create a file:-
file = File.new("newfile.txt",'w')
file.puts "damn this is new line\n ok we are here now"
file.close

#read a file:-
# file.

#open a file:-
file = File.open( "newfile.txt","r+" )
puts "just output first 4 letters: "+ file.read(4)
	while line = file.gets
		puts "** "+line.chomp+" **"
	end
file.puts "This is going to the output file"
file.close

#rename & delete 
File.rename("newfile.txt","newfile222.txt")
# File.delete("newfile222.txt")

#file copy
require 'fileutils' #require from core
FileUtils.copy("newfile222.txt","333.txt")


# file tests:-
file = "333.txt"
puts "Exists ? "+File.exists?(file).to_s
puts "is file ? "+File.file?(file).to_s
puts "is directory ? "+File.directory?(file).to_s
puts "is readable ? "+File.readable?(file).to_s
puts "is writable ? "+File.writable?(file).to_s
puts "is executable ? "+File.executable?(file).to_s
puts "size ? "+File.size(file).to_s
puts "what's dirname ? "+File.dirname(file).to_s
puts "what's basefile ? "+File.basename(file).to_s
puts "what's expand_path ? "+File.expand_path(file).to_s
puts "what's ext ? "+File.extname(file).to_s
puts "what's last modified ? "+File.mtime(file).to_s
puts "what's last accessed ? "+File.atime(file).to_s



#--------------------------------
puts "-----------------------"















