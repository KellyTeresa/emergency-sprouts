require_relative 'lib/airplane'
require_relative 'lib/container'
require_relative 'lib/ingredient'

require 'pry'

@concorde = Airplane.new("Concorde", 20_000)
@brussels_sprout = Ingredient.new('Brussels sprout', 20)
@cheesy_poof = Ingredient.new('Cheesy Poof', 0.5)
@sprout_container = Container.new(@brussels_sprout, 200, 300)
@poof_container = Container.new(@cheesy_poof, 50, 20)

def sprouts_containers_carried(plane,poofs_weight)
  sprout_capacity = plane.capacity - poofs_weight
  sprout_capacity / @sprout_container.weight_when_full?
end

def total_poof_weight(poof_amount)
  number_of_containers = (poof_amount.to_f / @poof_container.capacity).ceil
  all_container_weight = (number_of_containers * @poof_container.weight)
  all_container_weight + poof_amount
end

def print_sprout_info(plane_type,poofs_weight)
  containers = sprouts_containers_carried(plane_type,poofs_weight)
  number = containers * @sprout_container.quantity

 puts %Q(
When #{poofs_weight} lbs of Cheesy Poofs must
be delivered on a #{plane_type.name}, #{containers}
containers of Brussels sprouts are needed. They can
carry #{number} Brussels sprouts total.)

end

print_sprout_info(@concorde,5_000)
print_sprout_info(@concorde,1_000)

# I made up these numbers for cargo weight. I have no idea
# if they resemble anything like real world numbers for
# plane capacity. Demo for different plane specs:

@boeing_747 = Airplane.new('747', 80_000)
@boeing_787 = Airplane.new('787', 50_000)

print_sprout_info(@boeing_747,5_000)
print_sprout_info(@boeing_787,5_000)

# etc.
