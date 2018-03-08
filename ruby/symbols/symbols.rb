# Símbolos são utilizads para economizar memória e para ter elegância no código

# Objetos distintos em memória
puts "yuri".object_id
puts "yuri".object_id

# Aqui são dois objetos em memoria, embora seja a mesma coisa (a informação: yuri)

# Mesma objeto em memória
puts :yuri.object_id
puts :yuri.object_id

# Podemos usar em Hashes também

# Antes usávamos strings
params = { "id" => 20180126, "name" => "Yuri Melo", "age" => 20 }

puts params["id"]   # 20180126
puts params["name"] # "Yuri Melo"
puts params["age"]  # 20

# Agora usando symbols
params2 = { :id => 20180126, :name => "Yuri Melo", :age => 20 }

puts params2[:id]   # 20180126
puts params2[:name] # "Yuri Melo"
puts params2[:age]   # 20

# Ou, usando simbolos, podemos fazer de uma outra maneira mais bela
params3 = { id: 20180126, name: "Yuri Melo", age: 20 }

puts params3[:id]   # 20180126
puts params3[:name] # "Yuri Melo"
puts params3[:age]  # 20
