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

puts "--------------------------"



#--------------------
#there is several way you can set & get properties @property
# - way1: set_name() & get_name()
# - way2: name=() & name()
# - way3: attr_accessor :name OR attr_reader :name OR attr_writer :name 

class Animal 

	def initialize(init_name="Hello World")
		#this is constructor
		puts "Animal Class Initialized. #{init_name}"
	end

	def self.staticMethod() # this is a static method
		obj = self.new "Inner Call"
		obj.name = "Animal One"
		puts obj.name
		return "this is how you call static method";
	end

	def name=(animal_name) #this is setter. name= is shortcut for set_name
		@name = "#{animal_name}_Animal"
	end
	def name #this is getter. shortcut for get_name
		"Animal name is: #{@name}"
	end


	attr_accessor :fly #this is short for bot get_fly & set_fly
	attr_writer :swim #this is short for set_swim
	attr_reader :walk #this is short for get_walk

	attr_accessor :eat,:drink,:sleep #collective setters & getters

	def set_up_readers can_walk
		@walk = can_walk
	end




	@@all_nums = ["one","two","three"] #this is a class variable. can be accessed from the class only
# attr_ doesn't work for class properties @@. so you need to setup setters & getters for them to access them from out of class.
	def self.all_nums=(array=[])
		@@all_nums = array
	end
	def self.all_nums #getter
		@@all_nums 
	end

end


obj1 = Animal.new "run in init"
obj1.name = "dog"
puts obj1.name #now we can call it directly as 

obj1.fly = "No Animal Can't Fly"
puts obj1.fly

obj1.set_up_readers "Yes it can Walk"
puts obj1.walk

#class method means static method
puts Animal.staticMethod #static method called directly

puts Animal.all_nums.inspect #access class property
puts "--------------------------"
#---------------------------


#inhertance
class Cow < Animal
	def initialize(init_name="Hello World")
		super init_name # call the super method of the currnet method
		puts "Child Method"
	end
end

obj3 = Cow.new "Cow Creation"
puts Cow.all_nums.inspect

puts "--------------------------"
#---------------------------



module Creature #modules are namespaces or package
class Cow
	def initialize()
		puts "Creature Cow"
	end
end
end

obj1 = Cow.new 
obj2 = Creature::Cow.new #moduels are written like this.

puts "--------------------------"
#---------------------------




#modules can be used to insert code blocks inside multible classes
#this is called Mixins
module ModuleOne 
	def method1
		"this is method 1"
	end
	def method2
		"this is method 2"
	end
end

class Class1 
	include ModuleOne
end
class Class2 
	include ModuleOne
end

obj1 = Class1.new
obj2 = Class2.new
puts obj1.method1
puts obj2.method1
















