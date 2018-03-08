require 'byebug'

# << | Herança por comportamento

# [1] #####################
# danilo = "teste"
# def danilo.olha
# 	"teste danilo"
# end

# danilo.olha

# a = danilo.clone
# a.olha

# debugger

# b = danilo.dup
# b.olha

# clone = copia variáveis e métodos
# dup   = publica sem a cópia da metraprogramação


# [2] #####################
# Queremos definir vários métodos para danilo
# Toda vez temos que replicar estes métodos
# Coisa que dá muito trabalho

# danilo = "teste"

# def danilo.test1
# 	"Teste 1"
# end

# def danilo.test2
# 	"Teste 2"
# end

# def danilo.test3
# 	"Teste 3"
# end
# debugger
# x = ""

# Conseguimos colocar vários métodos e atributos dentro
# da classe de instância de danilo

# class << danilo
# 	def rodar
# 		"opa"
# 	end

# 	def test1
# 		"Teste 1"
# 	end

# 	def test2
# 		"Teste 2"
# 	end

# 	def test3
# 		"Teste 3"
# 	end
# end

# danilo.test1

# debugger 
# x = ""

# [3] #####################
# Cria método de classe, tendo em vista que self é a própria classe
# class Danilo
# 	# É a mesma coisa as duas maneiras de fazer métodos de classes
# 	def self.ola
# 		"Olá Danilo"
# 	end

# 	def self.hello
# 		"Hello Danilo"
# 	end

# 	class << self
# 		def hi
# 			"ddss"
# 		end

# 		def zdrastvuitye
# 			"zdrastvuitye"
# 		end
# 	end
# 	# Apenas a título de curiosidade
# 	# self faz referência à própria classe, ou seja, Danilo
# 	#puts self
# end
# # debugger
# puts Danilo.ola
# puts Danilo.hello
# puts Danilo.hi
# puts Danilo.zdrastvuitye

# [4] #####################
# Podemos também atribuir atributos de classe

# class Danilo
# 	class << self
# 		attr_accessor :nome, :endereco, :telefone
# 	end
# end
# debugger
# Danilo.nome = "Yuri"
# Danilo.endereco = "Rua Franscisco Menezes da Silva"
# Danilo.telefone = "(82) 9 99999-9999"

# [5] #####################

# module Utilidades
# 	class Cpf
# 		def validarCPF
# 			"Validando CPF..."
# 		end

# 		def self.validarCPF2
# 			"Validando CPF2..."
# 		end
# 	end

# 	class Cnpj
# 		def validarCNPJ
# 			"Validando CNPJ..."
# 		end

# 		def self.validarCNPJ2
# 			"Validando CNPJ2..."
# 		end
# 	end
# end
# debugger
# Utilidades::Cpf

# [6] #####################

# module Utilidades
# 	def validar_cpf
# 		"CPF Validado"
# 	end

# 	def validar_cnpj
# 		"CNPJ Validado"
# 	end
# end

# module Mostrar
# 	def mostrar_cpf
# 		"119.056.951-89"
# 	end

# 	def mostrar_cnpj
# 		"blá blá blá"
# 	end
# end

# class Cliente
# 	# Usamos o include para inserir os módulos em instâncias
# 	include Utilidades
# 	include Mostrar
# end

# class Fornecedor
# 	include Mostrar
# end

# Cliente.new.validar_cpf
# Fornecedor.new.mostrar_cnpj

# debugger

# x = ""

# [7] #####################

# module Validacoes
# 	def validar_cpf
# 		"CPF Validado"
# 	end

# 	def validar_cnpj
# 		"CNPJ Validado"
# 	end
# end

# a = "sss"
# a.extend Validacoes

# debugger

# x = ""

# [8] #####################
# Vamos inserir, agora em classes, tal como: String
# module Teste
# 	def tirar_espacos
# 		self.gsub(" ", "-")
# 	end
# end

# module Teste2
# 	def metodo_de_classe
# 		"teste"
# 	end
# end

# String.include Teste #Inserir nas instâncias
# String.extend Teste2 #Inserir na classe

# debugger
# x = ""

# [9] #####################

# module Validacoes
# 	def validar_cpf
# 		true
# 	end

# 	def validar_cnpj
# 		false
# 	end
# end

# class Teste
# 	# Inclui Validacoes na classe, uma vez que 
# 	# que estamos herdando de self, ou seja, dela
# 	# mesma. Quando estamos usando o include, nós incluímos
# 	# o módulo dentro das instâncias, mas neste contexto
# 	# estamos incluindo na classe, tendo em vista que estamos
# 	# herdando de self - Teste.
# 	class << self
# 		include Validacoes
# 	end
# end

# class Teste2
# 	#O mesmo acontece aqui
# 	extend Validacoes
# end

# debugger

# x = ""

# [10] #####################
# module InstanciaEClasse
# 	def instancia
# 		"Metodo de instancia"
# 	end

# 	module Classe
# 		def de_classe
# 			"metodo de classe"
# 		end
# 	end
# end

# class Teste
# 	#Inclui nas instancias desta classe
# 	include InstanciaEClasse
# 	#Inclui apenas na classe, funcinando como métodos estáticos em Java
# 	extend InstanciaEClasse::Classe
# end

# Teste.new.instancia
# Teste.de_classe

# debugger

#  x=""

# [11] #####################

# module InstanciaEClasse
# 	def instancia
# 		"metodo de instancia"
# 	end

# 	def self.included(cls)
# 		cls.extend Classe
# 	end

# 	module Classe
# 		def de_classe
# 			"metodo de classe"
# 		end
# 	end
# end

# class Teste
# 	include InstanciaEClasse
# end
# debugger
# x = ""

