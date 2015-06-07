require_relative 'lib/airplane'
require_relative 'lib/container'
require_relative 'lib/ingredient'

@concorde = Airplane.new("Concorde", 20_000)
@brussels_sprout = Ingredient.new('Brussels sprout', 20)
@cheesy_poof = Ingredient.new('Cheesy Poof', 0.5)
@sprout_container = Container.new(@brussels_sprout, 200, 300)
@poof_container = Container.new(@cheesy_poof, 50, 20)

def sprouts_containers_carried(plane,poofs_weight)
  sprout_capacity = plane.capacity - poofs_weight
  sprout_container_number = sprout_capacity / @sprout_container.weight_when_full?
end

containers = sprouts_containers_carried(@concorde,5_000)
number = containers * @sprout_container.quantity
puts """When 5,000 lbs of Cheesy Poofs must be delivered
on a Concorde, #{containers} containers of Brussels sprouts
are needed. They can carry #{number} Brussels sprouts total. \n
"""

containers = sprouts_containers_carried(@concorde,1_000)
number = containers * @sprout_container.quantity
puts """When 1,000 lbs of Cheesy Poofs must be delivered
on a Concorde, #{containers} containers of Brussels sprouts
are needed. They can carry #{number} Brussels sprouts total. \n
"""
# I made up these numbers for cargo weight. I have no idea
# if they resemble anything like real world numbers for
# plane capacity. Demo for different plane specs:

@boeing_747 = Airplane.new('747', 80_000)
@boeing_787 = Airplane.new('787', 50_000)

containers = sprouts_containers_carried(@boeing_747,5_000)
number = containers * @sprout_container.quantity
puts """When 5,000 lbs of Cheesy Poofs must be delivered
on a 747, #{containers} containers of Brussels sprouts
are needed. They can carry #{number} Brussels sprouts total. \n
"""
containers = sprouts_containers_carried(@boeing_787,5_000)
number = containers * @sprout_container.quantity
puts """When 5,000 lbs of Cheesy Poofs must be delivered
on a 787, #{containers} containers of Brussels sprouts
are needed. They can carry #{number} Brussels sprouts total. \n
"""
# etc.
