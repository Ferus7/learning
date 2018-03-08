require 'byebug'

class Danilo
	def ola
		"Olha danilo"
	end
end

##############Sobrescrevendo e perdendo super##############
# class Danilo2 < Danilo
# 	def ola
# 		# "Teste danilo para mostrar outras coisas " # se não utilizar o super aqui, perde a referência do original
# 		"Teste danilo para mostrar outras coisas\n" + super
# 	end
# end

# danilo2 = Danilo2.new
# puts danilo2.ola #Perde-se a referência do 1

############## Com alias ##############

# class Danilo2 < Danilo
# 	# É como se alias_method copia-se o ola de Danilo
# 	# 1º argumeto :ola_original é o nome do alias e o 2º é o método
# 	# que se deseja copiar
# 	alias_method :ola_original, :ola
	
# 	def ola
# 		"Teste danilo mostra outras coisas"
# 	end

# 	def todos
# 		ola_original + '-----' + ola
# 		# send("ola_original") + '-----' + ola # mais dinâmicos ainda
# 	end
# end

# danilo2 = Danilo2.new
# puts danilo2.ola
# puts danilo2.todos

############## Com modulo ##############
module ModuloOverwrite
	def metodo(nome)
		original_metodo_nome = "original_#{nome.to_s}"
		alias_method original_metodo_nome, nome

		define_method(nome) do
			"teste danilo para mostrar outras coisas, agora dentro do modulo"
		end

		define_method("todos") do
			send(original_metodo_nome) + ' ---- ' + send(nome)
		end
	end
end

class Danilo2 < Danilo
	extend ModuloOverwrite
	metodo :ola
end

danilo2 = Danilo2.new
puts danilo2.ola
puts danilo2.todos

############## Com modulo passando block callback ##############
module ModuloOverwrite
	def metodo(nome, &block)
		original_metodo_nome = "#{nome.to_s}"
		alias_method original_metodo_nome, nome
		
		define_method("todos") do
			send(original_metodo_nome) + ' ---- ' + send(nome)
		end
	end
end

class Danilo2 < Danilo
	extend ModuloOverwrite
	metodo :ola do
		"teste danilo para mostrar outras coisas, agora com o bloco customizado"
	end
end
