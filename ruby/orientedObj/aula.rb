class Person
	# Get and Set methods
	def name
		@name
	end

	def name=(value)
		@name = value
	end

	def show
		puts self.name
	end

end

a = Person.new
a.name = "Igor"
a.show
a.name = "Yuri"
a.show
