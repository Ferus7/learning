require 'byebug'

class Carro
	def initialize(name = "Default Model")
		@name = name
	end

	attr_accessor :port, :painel, :tire
	attr_reader :model
	attr_writer :name

	def honk
		puts "Hooonk!!! Hooonk!!!"
	end

end
