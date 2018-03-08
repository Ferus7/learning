
class Abstrata
	def initialize
		raise "É uma classe abstrata portanto não pode ser instanciada"
	end

	def test1
		raise "Este método precisa ser implementado!"
	end

	def test2
		"Olá, eu sou test2"
	end

end
