

puts 123 #puts outputs with line break
print 222	# print outputs without line break
puts 5555

puts "Hello".reverse
puts "hello".upcase
puts "HELLO".downcase

puts "hello".size # length of the string
puts "hello".length # same as size


VariableName = "Ahmed Badawy"
puts VariableName

puts 200.next.to_s + " outputs 200 + 1" # .next get the next number // .to_s : to String 

puts 10/3 # outputs only 3 //round result
puts 10/3.0 #ouputs 3.33333333333 //use 0 to refuse rounded values

puts 10.6.round 
puts 10.6.floor 
puts 10.6.ceil 

puts "Hello"+" "+"World ! "*5
puts "Welcome #{VariableName}" # put var inside string
puts 'Welcome #{VariableName}' # if '' single quats will not do it


array = ['one','two',"three",3,4,3,3,4.0, ['inner array','b'] , 'five']
array << "appened elm" # same as       array.push(new value)
puts array.inspect

puts output = array.join(", ") #implode
puts output.split(", ").inspect #explode
puts array.uniq.inspect # return only unique values


array.uniq! # uniq! : unique & then save instead of original array
array.delete_at(1) #delete the value with the key 1
array.delete("one") #delete the value with the value "one"
puts array.inspect

puts "does it include 3 ? " + array.include?(3).to_s #does it include 3 ?
puts "is it empty ? " + array.empty?.to_s # is it empty ?

puts array.pop # pop the last value then returns it
array.push("last item")
puts array.shift
array.unshift("first item")
puts array.inspect

new_array = array+["new1","new2","new3"] #concating arrays
new_array = new_array-[3,4,"new2"] #remove items 
puts new_array.inspect



# ---------- Hashes--------------------
# :symbol_name  //you can reserve memory using the symbols.

hash1 = { 
	"first_name" => "ahmed" , 
	"last_name" => "ali",
	:can_swim => true
}
hash1["age"] = 25
hash1[:first_name] = "ahmed badawy" 
puts hash1.inspect

puts hash1["first_name"] # get value from key
puts hash1.key("ali") # get key from value

puts hash1.keys.inspect
puts hash1.values.inspect
puts hash1.length.inspect #same is size
puts hash1.to_a.inspect #to array

puts "does it has key :first_name ? " + hash1.has_key?(:first_name).to_s
puts "does it has value 25 ? " + hash1.has_value?(25).to_s




# ---------- Constants --------------------
# any variable begin with capital litter is considered a constant 
Constant = "one"
NewVar = "two"



#conditions:
if "ahmed".length <= 5
	puts "yes it's bigger"
elsif "ahmed".length <=6
	puts "no it's not"
else
	puts "this is final closure"
end


unless "ahmed".length <= 5  #if not
	puts "yes it's bigger"
end


case "ahmed".length
when 5
	puts "it's 5"
when 6
	puts "it's 6"
else
	puts "not 5 or 6"
end


# Ternary Operator
puts "ahmed".length == 5 ? "ternary said it's 5 ok!" : "it's not a 5"

# Or Equals
x = false || false || "x is one. Finally!"
puts x 

# Or not Equals
y ||= "new value of y" #means if y is false then put y = 5
puts y 




#-------------Loops--------------------

x = 0
loop do 
	x += 2
	break if x >= 20 			#end loop if 
	next if x == 4 || x == 6 	#skip to next if
	print x.to_s + " - "
end
puts ""


x=0
while x < 20
	x += 2
	print x.to_s + " - "
end
puts ""


5.times do 
	print "hello" + " - "
end
puts ""

1.upto(5){ print "hello - " }
puts ""
5.downto(1){ print "hello - " }
puts ""
(1..5).each{ print "hello - " }
puts ""

1.upto(5) do |i|
	print "hello #{i} - "
end
puts ""
#OR with out the do in one line. EX:
1.upto(5){|i| print "welcome - " }
puts ""



#------- Itirate Over Arrays
#in itirators you can use (break - next - redo - retry)
# redo: redo this loop cycle
# retry: start the whole loop over

array.each do |item|
	print "#{item} - "
end
puts ""
#OR
array.each{|item| print "#{item} - " }
puts ""


for item in array
	print "#{item} - "
end
puts ""





















