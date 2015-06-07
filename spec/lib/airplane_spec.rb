require_relative '../../lib/airplane'

describe Airplane do

  let (:plane) {Airplane.new("Concorde", 20_000)}

  context 'new airplane' do
    it 'is an Airplane' do
      expect(plane).to be_a(Airplane)
    end
    it 'has a max cargo capacity' do
      expect(plane.capacity).to eq(20_000)
    end
    it 'has a name' do
      expect(plane.name).to eq("Concorde")
    end

  context 'carrying Cheesy Poofs' do
  let (:container) {Container.new(Ingredient.new('Cheesy Poof', 0.5), 50, 20)}
    it 'can carry 285 full containers of Cheesy Poofs' do
      expect(plane.how_many_containers?(container)).to eq(285)
    end
  end

  end
end
