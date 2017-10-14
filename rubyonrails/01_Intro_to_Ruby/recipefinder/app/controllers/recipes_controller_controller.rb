class RecipesControllerController < ApplicationController
  def index
  	@term = params[:looking_for] || 'chocolate'
  	@recipes = Recipe.for(@term)
  	@new_recipes_hash = @recipes["recipes"] 
  end
end
