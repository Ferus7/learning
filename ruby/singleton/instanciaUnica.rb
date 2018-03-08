require 'byebug'

class InstanciaUnica
	include SingleTon

	def test1
		"Test1 da classe de instância única - SingleTon"
	end

	def test2
		"Test2 da classe de instância única - SingleTon"
	end
end
