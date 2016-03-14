class Person #first char must be capital

	def set_instance value
		@instance_variable = value
	end

	def make_noise
		@instance_variable
	end

end


obj1 = Person.new
obj1.set_instance "Hello World"
puts obj1.make_noise.upcase


obj2 = Person.new
puts obj2.make_noise.inspect # will output nil




#--------------------
class Animal 

	def name=(animal_name) #this is setter. name= is shortcut for set_name
		@name = "#{animal_name}_Animal"
	end
	def name #this is getter. shortcut for get_name
		"Animal name is: #{@name}"
	end
end

obj1 = Animal.new
obj1.name = "dog"
puts obj1.name #now we can call it directly as 





