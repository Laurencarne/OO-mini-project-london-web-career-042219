class RecipeCard
  @@all = []

  attr_reader :recipe, :user, :date, :rating

  def initialize(recipe, user, date=Date.today, rating=0)
    @recipe = recipe
    @user = user
    @date=date
    @rating=rating
    @@all << self
  end

  def self.all
    @@all
  end
end
