class Ingredient
  attr_reader :name, :weight
  def initialize(name,weight)
    @name = name
    @weight = weight
  end

  def weight_in_pounds
    (weight * 0.00220462).round(6)
  end

  def number_per_pound
    (1 / weight_in_pounds).round
  end

end
