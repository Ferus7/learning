require 'byebug'

index = 0
i = 0

while index < 10
	puts index
	index += 1
end
debugger
until i < 5
	puts i
	i += 1
end

x = ""