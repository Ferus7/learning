class Recipe < ApplicationRecord
	def light?
		cal < 100
	end
	
	def barato?
		cost <= 500
	end

end
