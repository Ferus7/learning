class Carro
	
	#Não há só o attr_accessor, mas também o attr_writer e attr_reader
	attr_accessor :nome, :pneu, :porta, :painel, :roda
end

ferrari = Carro.new
ferrari.nome = 'Ferrari'
puts ferrari.nome

