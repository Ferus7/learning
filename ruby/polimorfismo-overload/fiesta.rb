require 'byebug'

class Fiesta < Carro
	attr_accessor :cor

	# debugger

	def mostrar
		puts "OIII ----#{super}"
	end

	def mostrar2(d,r)
		puts "Osssssss - #{d} - #{r}"
	end

	def mostrar2
		puts "Osssssss"
	end

	def mostrar_privado
		Carro.new.algo_mais
	end

	def mostrar_protegido
		Carro.new.logo_mais_protected
	end
end
