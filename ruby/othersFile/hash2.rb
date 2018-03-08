
$arraySimple = %w{0 1 2 3 4 5 6 7 8 9}
$funcionarios = []

inst_section = {
   'cello': 'string',
   'clarinet': 'woodwind',
   'drum': 'percussion',
   'oboe': 'woodwind',
   'trumpet': 'brass',
   'violin': 'string'
}

puts inst_section[:oboe]

loop do
   puts "1 - Entrar\n2 - Sair\n"
   valor = gets.to_i
   break if valor == 2

   funcionario = {}
   puts "Nome : "
   funcionario[:name] = gets
   puts "Idade : "
   funcionario[:idade] = gets.to_i
   puts "Telefone : "
   funcionario[:tel] = gets
   puts "CPF : "
   funcionario[:cpf] = gets
   $funcionarios << funcionario

end
