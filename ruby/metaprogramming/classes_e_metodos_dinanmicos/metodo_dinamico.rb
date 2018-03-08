require 'byebug'
# Definir Método dinâmico
class Teste
	def self.definir(nome_metodo)
		define_method(nome_metodo) do
			puts "Metodo em runtime"
		end
	end
end

Teste.definir("teste")
debugger
Teste.new.teste