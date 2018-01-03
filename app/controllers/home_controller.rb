class HomeController < ApplicationController
    def index
        if(!user_signed_in?)
            redirect_to "/users/sign_in"
        end
        @recipes = Recipe.all
        @ingredients = Ingredient.all
        @user = current_user
    end
    def new
    end
    
    def aboutus
    end
    
end
