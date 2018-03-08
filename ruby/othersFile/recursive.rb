require 'byebug'

debugger

def recursive(count=1)
   puts "I'm #{count}º aluno"
   return if count == 5
   recursive(count+1)
end

recursive
