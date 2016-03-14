#------------------subseting an array (filtering):-

puts (1..10).find{|i| i==5 } #return i if i=5 or nil
puts (5..10).find{|i| i%2 == 0 } #return i if i%2==0 or nil
puts (5..10).detect{|i| i%2 == 0 } #detect is the same as find
print (1..10).find_all{|i| i%2 == 0 } #find all will return all values not only first occurance
puts ""

print (1..10).select{|i| i%3 == 0 } 
puts ""

array = [1,2,3,4,5]
puts array.any?{|i| i%3==0 } #does any of the can be %3
puts array.all?{|i| i%3==0 } #does all of them match

array.delete_if{|i| i%3==0} #delete if true
print array
puts ""


#---------------Merging Hashes
hash1 = {:a=>111,"b"=>222}
hash2 = {"b"=>333,"c"=>444} # b in the second one will replace the first one

hash3 = hash1.merge(hash2) # you can replace hash1 instead of returning with the merge! method
puts hash3.inspect



#---------------Collect/Map ( arrays , hashes , ranges ) process on every item
array = [1,2,3,4,5]
array.collect!{|i| i*100 }  
puts array.inspect

new_hash = hash3.map{|key,val| "#{key} +++ #{val}" }  
puts new_hash.inspect


#---------------Sorting---
array = [5,2,6,4,1,7]
puts array.sort.inspect




#---------------methods
def testit? #usally use ? for true or false returns
	true
end


def method1
	puts "this is method 1"	
end

def method2
	"this is method 2"
end

def method3
	puts @array.inspect
end

def method4(myarray,str='string 2') #str has default value
	myarray.pop
	myarray.push("this is method 4")
	myarray.push(str)
	puts myarray.inspect

	return myarray #by default ruby will return the last defined value. but your return will override the defaults
end

def method5 #multiple returns
	return "value 1","value 2","value 3" #this is an array of values. the [] are optional in returns
end



@array = ["one","two","this is method 3"] #this is a instance variable that can be accessed from any where

method1
puts method2
method3

method4 [1,2,3]  
method4 @array,"two" #() are optional 

val1,val2 = method5 #this is an array but [] are optional in this case
puts "Values Array: #{val1} --- #{val2}"

if testit? 
	puts "yes it did it"
end



require "./required_file.rb" #require some code
























