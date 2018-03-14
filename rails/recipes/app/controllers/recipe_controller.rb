class RecipeController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  # O params gera um hash com todas as informações
  def show
  	@recipe = Recipe.find(params[:id])
  end
end
