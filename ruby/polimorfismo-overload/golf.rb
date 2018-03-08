class Golf < Carro

	def mostrar
		mostrarOriginal = super
		puts "Método - Class Golf\n#{mostrarOriginal}"
	end

	def andar(p1, p2, p3)
		puts "andar com parametros #{p1}, #{p2}, #{p3}"
	end

	def andar
		puts "andar sem parametros"
	end

	def andar(*arguments)
		puts "andar com parametros"
		arguments.each do |i|
			puts i
		end
	end
end
