require 'byebug'
# definir várias classes e metodo em runtime utilizando hash
def definir_classe(classe, nome_metodo)
	if(classe.is_a?(String))
		eval("class #{classe} end")
		classe = Object.const_get(classe)
	end

	classe.class_eval do
		define_method(nome_metodo) do |*param|
			puts "O valor dos parametros é: #{params.join(", ")}"
		end
	end
end

{
	"Danilo" => ["mostrar", "exibir", "visualizar"],
	"Sheila" => ["mostrar", "exibir", "visualizar"],
	"Lana" => ["mostrar", "exibir", "visualizar"]
}.each do |classe, metodos| #classe - Key | metodos - Value
	metodos.each do |metodo|
		definir_classe(classe, metodo)
	end
end

puts Danilo.new.methods - Class.methods
puts Sheila.new.methods - Class.methods
puts Lana.new.methods - Class.methods