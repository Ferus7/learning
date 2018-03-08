require 'byebug'

classe = "danilo"
debugger
#classe = classe.capitalize
classe.capitalize! #Já altera a variável
eval("class #{classe} end")
classe = Object.const_get(classe)
puts classe