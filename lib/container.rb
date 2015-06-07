class Container
  attr_reader :type, :weight
  def initialize(type,weight,capacity)
    @type = type
    @weight = weight
    @capacity = capacity
  end

  def quantity
     (@capacity / type.weight_in_pounds).floor
  end

  def weight_when_full?
    ((quantity * type.weight_in_pounds) + weight).round
  end

end
