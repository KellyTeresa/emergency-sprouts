class Container
  attr_reader :type, :weight, :capacity
  def initialize(type,weight,capacity)
    @type = type
    @weight = weight
    @capacity = capacity
  end

  def quantity
     (capacity * type.number_per_pound).round
  end

end
