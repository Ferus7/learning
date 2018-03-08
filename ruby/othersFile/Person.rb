require 'byebug'

class Carro

	def initialize(nome, idade)
		@nome = nome
		@idade = idade
	end

	def nome=(value)
		@nome = value
	end

	def nome
		@nome
	end

	def idade=(value)
		@idade = value
	end

	def idade
		@idade
	end

	def mostrar(marca)
		puts "Marca: #{marca} - Modelo: #{self.nome}"
	end

end

debugger

carro = Carro.new
carro.nome = "Camaro"
puts carro.nome
carro.mostrar("Wolkswagem")