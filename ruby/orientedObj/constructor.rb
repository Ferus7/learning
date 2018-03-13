class Car

	# Caso queia, você pode atribuir um valor à variável serialNumber
	# Apenas crie um método, do tipo set, para ela
	def initialize(name, age, serialNumber=120420182056)
		@name = name
		@age = age
		@serialNumber = serialNumber
	end

	def name
		@name
	end

	def name=(value)
		@name = value
	end

	def age
		@age
	end

	def age=(value)
		@age=  value
	end

	def serialNumber
		@serialNumber
	end

	def show
		puts self.name
		puts self.age
	end

end

a = Car.new('Iran', 20)
puts a.name
puts a.age
a.serialNumber = 2018
puts a.serialNumber
