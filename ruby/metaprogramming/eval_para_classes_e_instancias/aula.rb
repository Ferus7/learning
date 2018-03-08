require 'byebug'

class Teste
	def initialize
		@variavel = "danilo"
	end

	private

	def variavel_metodo
		puts "Método aqui"
		@variavel
	end
end

teste = Teste.new

# puts teste.instance_eval{ @variavel }
# puts teste.instance_eval{ variavel_metodo }

# Tendo em vista que instance_eval está
# dento de teste, ou seja, uma instancia,
# deste modo self é a própria instancia,
# neste caso exibirá uma mensagem com o hexadecimal
# do endereço de memória.

# teste.instance_eval do
# 	puts self
# end

# instance_eval para instancia
# Também podemos dizer que abrimos a instancia,
# ou seja, podemos adicionar método nesta instania.
# teste.instance_eval do
# 	def variavel
# 		puts "Método"
# 	end

# 	def metodo2
# 		puts "Método 2"
# 	end

# 	def metodo3
# 		puts "Método 3"
# 	end
# end

# puts teste.variavel

#=====================================

# class Teste
# 	def initialize
# 		@variavel = "danilo"
# 	end
# end

# # instance_eval para Classe
# Teste.instance_eval do
# 	def metodo_de_classe
# 		puts "metodo de classe instance_eval"
# 	end

# 	def metodo_de_classe2
# 		puts "metodo de classe instance_eval 2"
# 	end
# end

# Teste.metodo_de_classe
# Teste.metodo_de_classe2

#=====================================

# class Teste
# 	def initialize
# 		@variavel = "danilo"
# 	end
# end

# Teste.class_eval do
# 	def metodo_de_instancia
# 		puts "metodo de class_eval"
# 	end

# 	def metodo_de_instancia2
# 		puts "metodo de class_eval2"
# 	end
# end


# Teste.new.metodo_de_instancia
# Teste.new.metodo_de_instancia2

#=====================================
# não funciona
# def String.teste
# 	"ssssdds"
# end

# "danilo.teste"
#=====================================
# Agora, sim, podemos adicionar metodo a classe
String.class_eval do
	def teste
		"ssddds"
	end
end
"danilo".teste
# #=====================================
# # Neste caso adicionamos à instancia
# danilo = "danilo"
# def danilo.teste2
# 	"sssds 33"
# end
# danilo.teste2
# debugger
# #=====================================
# String.instance_eval do
# 	def de_classe
# 		"sss classe dds"
# 	end
# end
# String.de_classe
# #=====================================
# def String.mostrar_nova_string2
# 	"nova string"
# end
# String.mostrar_nova_string2
# #=====================================
# class << String
# 	def olha1
# 		"Olha danilo"
# 	end
# end
# String.olha1
# #=====================================

# module AtributosDinamicos
# 	def atributo(attr)
# 		class_eval %{
# 			def #{attr}
# 				@#{attr}
# 			end
# 			def #{attr}=(value)
# 				@#{attr} = value
# 			end
# 		}
# 	end
# end

# class Teste
# 	extend AtributosDinamicos
# 	atributo :nome
# end

# teste = Teste.new
# teste.nome = "Danilo"
# teste.nome


