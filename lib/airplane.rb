class Airplane
  attr_reader :capacity, :name
  def initialize(name,capacity)
    @capacity = capacity
    @name = name
  end

  def how_many_containers?(type)
    capacity / type.weight_when_full?
  end
end
