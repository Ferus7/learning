# hooks (gancho)
# require 'byebug'

# module UmModulo
# 	# Dispara o hook quando incluído
# 	def self.included(klass)
# 		puts "Modulo #{self} incluindo em #{klass}"
# 	end

# 	# Dispara o hook quando extendido
# 	def self.extended(klass)
# 		puts "Modulo #{self} extendido em #{klass}"
# 	end

# 	def instancia
# 		"Metodo de instancia"
# 	end

# 	def self.de_classe
# 		"Metodo de classe"
# 	end
# end

# class Teste
# 	include UmModulo
# end

# class Teste2
# 	extend UmModulo
# end

############# inherited (Herdade) #############
# class Pai
# 	def self.inherited(klass)
# 		puts "A class #{klass} herda de #{self}"
# 	end
# end

# class Filho < Pai
# end

# puts Filho.new

############# inherited (Herdade) #############
class Pai
	def self.inherited(klass)
		puts "A classe #{klass} herda de #{self}"
		@classes ||= []
		@classes << klass
	end

	# Dá para saber todas as classes que herdaram
	# dessa classe
	def self.lista_de_classes
		@classes
	end
end

class Yuri1 < Pai
	def mostreNome
		"Yuri"
	end
end

class Yuri2 < Pai
	def mostreNome
		"Fabiana"
	end
end

class Yuri3 < Pai
	def mostreNome
		"Igor"
	end
end

class Yuri4 < Pai
	def mostreNome
		"Iran"
	end
end

# debugger
# x = ""