class Car

	@@makes = []
	@@cars = {}
	
	attr_reader :make

	def self.total_count
		@total_count ||= 0
	end

	def self.total_count=(n)
		@total_count = n
	end

	def self.list_of_makes
		@@makes
	end

	def self.add_make(make)
		unless @@makes.include?(make)
			@@makes << make
			@@cars[make] = 0
		end
	end
	
	def initialize(make)
		if @@makes.include?(make)
			puts "Creating a new #{make}!"
			@make = make
			@@cars[make] += 1
			self.class.total_count += 1
		else 
			raise "No such make: #{make}."
		end
	end

	def make_mates
		puts "There are currently #{@@cars[self.make]} #{self.make}s."
	end

end

class Hybrid < Car

	def initialize(make)
		if @@makes.include?(make)
			puts "Creating a new #{make} hybrid!"
			@make = make
			@@cars[make] += 1
			self.class.total_count += 1
		else 
			raise "No such make: #{make}."
		end
	end

end

Car.add_make("BMW")
Car.add_make("Mercedes")
Car.add_make("Mazda")
Car.add_make("Audi")
car1 = Car.new("Audi")
car2 = Car.new("Audi")
car3 = Car.new("BMW")
car4 = Car.new("Mercedes")
car5 = Car.new("Mazda")
car6 = Car.new("Mazda")
car7 = Car.new("Mazda")
puts Car.list_of_makes
puts "Car3 is a #{car3.make}."



