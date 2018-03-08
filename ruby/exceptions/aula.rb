class Test
	def err
		1/0
	rescue Exception => a
		puts a.message
	end
end

Test.new().err