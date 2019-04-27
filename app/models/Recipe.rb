class Recipe
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.most_popular

    counter=0;
    max_rec=0;

    until counter>@@all.length

      count_rec=RecipeCard.all.select {|card| card.recipe==@@all[counter]}.length
      if count_rec>max_rec
        max_rec=count_rec
        max_recipe=@@all[counter]
      end
      counter+=1
    end

    max_recipe

 end

  def users
      RecipeCard.all.select {|card| card.recipe==self }.map {|recipecard| recipecard.user }.uniq
  end

  def count_of_recipecards
    RecipeCard.all.select {|card| card.recipe==self}.length
  end

  def ingredients
    RecipeIngredient.all.select {|ingred| ingred.recipe==self }.map {|ingred2| ingred2.ingredient }
  end

  def allergens
      result_ingred=[]

      ingredients.each do | ingredient |
        if Allergy.all.map {|allergy| allergy.ingredient }.include?(ingredient)
            result_ingred << ingredient
        end
      end
      result_ingred
  end

  def add_ingredients( ingredients )

      ingredients.each do | ingredient |
        ingred=Ingredient.new(ingredient)
        RecipeIngredient.new( self, ingred )
      end

  end
end
