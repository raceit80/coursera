class RecipesControllerController < ApplicationController
  def index
  	@term = params[:search] || 'chocolate'
  	@recipes = Recipe.for(@term)
  	@new_recipes_hash = @recipes["recipes"] 
  end
end
