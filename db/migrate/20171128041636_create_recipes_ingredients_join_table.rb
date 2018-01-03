class CreateRecipesIngredientsJoinTable < ActiveRecord::Migration
  def change
    # This is enough; you don't need to worry about order
    create_join_table :ingredients, :recipies

    # If you want to add an index for faster querying through this join:
    create_join_table :ingredients, :recipes do |t|
      t.index :ingredient_id
      t.index :recipe_id
    end
  end
end
