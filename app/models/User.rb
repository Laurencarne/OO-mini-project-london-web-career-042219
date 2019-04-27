class User
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
  #    RecipeCard.all.select {|card| card.user==self }.map {|recipecard| recipecard.recipe }.uniq
      RecipeCard.all.select {|card| card.user==self }

  end

  def add_recipe_card( recipe , date, rating )
    RecipeCard.new(recipe, self, date, rating )
  end

  def declare_allergy( ingredient )
      Allergy.new(ingredient, self)
  end

  def top_three_recipes
      recipes.sort { |a, b|
        b.rating <=> a.rating}[0..2]
  end

  def most_recent_recipe
      recipes[-1]
  end

#   def safe_recipes
#
#       result_ingred=[]
#
# # loop through recipe
# # check if user is allergic to ngredients
#
#
#       recipesingredients.all.each do | ingredient |
#
#         if !Allergy.all.map {|allergy| allergy.ingredient }.include?(ingredient)
#             result_ingred << recipe
#         end
#
#       end
#       result_ingred
#   end
end
