class Ingredient
  attr_reader :name, :weight
  def initialize(name,weight)
    @name = name
    @weight = weight
  end

  def weight_in_pounds
    (weight * 0.00220462)
  end

end
