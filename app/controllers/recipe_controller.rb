class RecipeController < ApplicationController
    def create
        @recipe = Recipe.new
        @recipe.name = params[:recipe_name]
        @recipe.instructions = params[:recipe_instructions]
        @recipe.description = params[:recipe_description]
        @ingredients = Ingredient.find(params[:ingredient_ids])
        for i in @ingredients
            @entry = CreateRecipesIngredientsJoinTable.new
            @entry.ingredient = i
            @entry.recipe = @recipe
        end
        @recipe.save
        redirect_to "/home/index"
    end
    
    def show
        @recipe = Recipe.find(params[:recipe_id])
        @ingredients = Ingredient.all
        @i = @recipe.ingredients
        # @template = File.read('../views/recipe/show.html.erb')
        # ERB.new(@template).result( binding )
    end
    
    def show_recipes
        @ingredient = Ingredient.find(params[:ingredient_id])
        @recipes = @ingredient.recipes
    end
    
    def random
        @random = rand(Recipe.count) + 1
        @recipe = Recipe.find(@random)
        @id = @recipe.id
        redirect_to "/recipe/show/"+@id.to_s
    end
end
