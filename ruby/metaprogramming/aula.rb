require 'byebug'

# def String.mostrar_nova_string
# 	"Nova String"
# end

# a = "Yuri"

# def a.mostrar_nova_string2
# 	"Nova String2 adicionado à a"
# end

# puts a.mostrar_nova_string

class Carro
	def initialize(marca="Wolkswagem")
		@marca = marca
	end

	attr_accessor :marca

	def mostrar
		"Olá, sou o método da classe Carro"
	end

	#Método de classe é como se fosse métodos estáticos em Java
	def self.mostrarMetodo
		"Este método é de classe"
	end

end

def Carro.mostrarMetodo2
	"Este método é de classe, porém fora da classe Carro"
end

debugger

fiesta = Carro.new

def fiesta.mostrar
	"Olá, sou o método de Fiesta"
end

golf = Carro.new

def golf.mostrar
	"Olá, sou o método de Golf"
end

bugatti = Carro.new

puts fiesta.mostrar
puts golf.mostrar
puts bugatti.mostrar
