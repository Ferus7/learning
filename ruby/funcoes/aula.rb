require 'byebug'

def teste(*paramatros)
	# Retorna 1 se dentro do array de parametros
	# tem incuído o numero 2
	return 1 if paramatros.include? 2

	"Não caiu na condição!" # Caso não entre na condição imposta acima
end

a = teste 1,2,3,4,5,6

puts a
