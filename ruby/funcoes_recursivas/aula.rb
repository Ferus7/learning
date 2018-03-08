require 'byebug'

def teste(*parametros)
	return 1 if parametros.include? 2
	a = "aa" = 1
	1 + 420 - 3
rescue Exception => e
	puts "Opa Aconteceu erro"
	puts e.message
end