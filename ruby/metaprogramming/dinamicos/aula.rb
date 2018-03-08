require 'byebug'

#lambda não aceita mais parametros do que os definidos
#lambda retorna dentro do próprio lambda

# l = lambda {|param| param * 5}
# puts l.call(4)

# l = lambda do |p1, p2|
# 	return p1 + p2
# end
# debugger

# x = ""

# puts "ini"
# def method
# 	puts "indi"
# 	l = lambda {return "s"}
# 	puts l.call
# 	puts "inei"
# end
# method
# puts "fim"

#############################################
#Proc aceita uma passagem de parâmetros diferente do que ele pede
l = Proc.new do |param|
	param = 0 if param.nil?
	param * 5
end
puts l.call(4)

# debugger

l = Proc.new do |p1, p2|
	p1 = 0 if p1.nil?
	p2 = 0 if p2.nil?
	p1 + p2
end
puts l.call

puts "ini"
def method
	puts "indi"
	l = Proc.new {return "dd"}
	puts l.call
	puts "inei"
end
method
puts "fim"

#############################################

# def metodo(&bloco)
# 	bloco
# end

# # Utiliza Proc
# l = metodo do |param|
# 	param*5
# end

# puts l.call(4)
# debugger
# a = metodo do
# 	"Yuri Melo Proc"
# end

# puts a.call


#############################################
#Criar Métodos Dinâmicos

# converte string na linguagem
# debugger
# eval "puts 'danilo'"

# atr = "danilo"

# eval("
# 	def #{atr}(value)
# 		@#{atr} = value
# 	end
# ")

# eval("
# 	def mostra
# 		@#{atr}
# 	end
# ")

# danilo('dssds')
# puts mostra

#############################################

#definindo métodos dinamicos
# class Teste
# 	def inicio
# 		def fim
# 		end
# 	end
# end

# t = Teste.new
# debugger
# t.inicio
# t.fim

#############################################

# class Teste
# 	# Método de class
# 	def self.definir(valor)
# 		# O define_method cria métodos dinâmicos
# 		# de instancia
# 		define_method(valor) do |param1, param2|
# 			puts "#{param1} - #{param2}"
# 		end
# 	end

# 	def self.atributo(valor)
# 		define_method(valor) do |param1|
# 			puts param1
# 		end
# 	end
# end

# ['set_nome', 'set_telefone', 'set_endereco'].each do |atr|
# 	Teste.atributo(atr)
# end

# teste = Teste.new

# debugger
# # Método de classe
# Teste.definir("novo_metodo")
# Método de instancia
# Teste.new.novo_metodo('Danilo', "que legal")

#############################################

# module AtributosDinamicos
# 	# este método é como se fosse um attr_accessor
# 	def atributos(*atrs)
# 		atrs.each do |atr|
# 			define_method("#{atr}=") do |value|
# 				instance_variable_set "@#{atr}", value
# 			end

# 			define_method("#{atr}") do
# 				instance_variable_get "@#{atr}"
# 			end
# 		end
# 	end

# 	#este método é como se fosse um attr_reader
# 	def atributos_somente_leitura(*atrs)
# 		atrs.each do |atr|
# 			define_method("#{atr}") do
# 				instance_variable_get "@#{atr}"
# 			end
# 		end
# 	end
# end

# class Teste
# 	extend AtributosDinamicos
# 	atributos :nome, :telefone, :cpf
# 	atributos_somente_leitura :nome2, :telefone2, :cpf2
# end

# t = Teste.new
# t.nome = "danilo"
# t.telefone = "3334343"

# debugger

# puts "#{t.nome}, #{t.telefone}"


