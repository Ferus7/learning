module RecipeHelper
	def formata_caloria(recipe)
		if recipe.light?
			content_tag(:strong, "Light (menos de 100 calorias)")
		else
			recipe.cal
		end
	end

	# Este método não é apresentao no curso de Rails
	# Foi apenas um teste
	def precinho(recipe)
		if recipe.barato?
			content_tag(:strong, "No precinho meu patrão! É muito gostoso! Ôôooohh");
		else
			number_to_currency(recipe.cost)
		end
	end
end
