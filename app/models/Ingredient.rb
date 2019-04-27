class Ingredient
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    counter=0;
    max_rec=0;

    until counter>@@all.length

      count_rec=Allergy.all.select {|allergy| allergy.ingredient==@@all[counter]}.length
      if count_rec>max_rec
        max_rec=count_rec
        max_ingredient=@@all[counter]
      end
      counter+=1
    end

    max_ingredient
  end

end
