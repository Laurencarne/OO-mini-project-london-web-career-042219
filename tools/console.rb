require 'pry'
require 'date'
require_relative '../config/environment.rb'

## Ingredients
flour = Ingredient.new("Flour")
cherry = Ingredient.new("Cherries")
butter = Ingredient.new("Butter")
chilli =Ingredient.new("Chilli")
tomato =Ingredient.new("Tomato")

## Recipes
cherrybakewell = Recipe.new("Cherry Bakewell")
bread = Recipe.new("Bread")
curry = Recipe.new("Curry")

## Link the Recipe and Ingredients = RecipeIngredient
ri_1 = RecipeIngredient.new(cherrybakewell, flour)
ri_2 = RecipeIngredient.new(cherrybakewell, cherry)
ri_3 = RecipeIngredient.new(cherrybakewell, butter)
ri_4 = RecipeIngredient.new(bread, flour)
ri_5 = RecipeIngredient.new(bread, butter)
ri_6 = RecipeIngredient.new(curry, butter)
ri_7 = RecipeIngredient.new(curry, flour)
ri_8 = RecipeIngredient.new(curry, chilli)
ri_8 = RecipeIngredient.new(curry, tomato)

## Users
marcus = User.new("Marcus")
lauren = User.new("Lauren")
sam = User.new("Sam")
jacob = User.new("Jacob")


## Allergy
al_1 = Allergy.new(flour, lauren)
al_1 = Allergy.new(flour, marcus)
al_1 = Allergy.new(flour, jacob)
al_1 = Allergy.new(chilli, lauren)
al_1 = Allergy.new(butter, lauren)
al_1 = Allergy.new(tomato, lauren)

## RecipeCard
card_1 = RecipeCard.new(bread, marcus, Date.today, 4)
card_2 = RecipeCard.new(bread, lauren, Date.today, 3)
card_3 = RecipeCard.new(cherrybakewell, marcus,  Date.today, 2)
card_4 = RecipeCard.new(bread, sam,  Date.today, 4)
card_5 = RecipeCard.new(bread, jacob, Date.today, 5)
card_6 = RecipeCard.new(cherrybakewell, jacob, Date.today, 2)
card_7 = RecipeCard.new(cherrybakewell, jacob,  Date.today, 4)
card_8 = RecipeCard.new(curry, jacob, Date.today, 1)
card_9 = RecipeCard.new(curry, lauren, Date.today, 5)
card_10 = RecipeCard.new(curry, marcus,  Date.today, 4)

bread.add_ingredients(["yeast","eggs","banana"])


jacob.add_recipe_card(  bread, Date.today, 5 )

binding.pry
puts "Mischief Managed!"
