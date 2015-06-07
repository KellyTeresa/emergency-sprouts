require_relative '../../lib/container'

describe Container do

  context 'a Cheesy Poofs container' do
    let (:container) {Container.new(Ingredient.new('Cheesy Poof', 0.5), 50, 20)}
    it 'has an Ingredient type Cheesy Poof' do
      expect(container.type.name).to eq('Cheesy Poof')
    end
    it 'has a type that is an Ingredient' do
      expect(container.type).to be_a(Ingredient)
    end
    it 'can carry a quantity of Cheesy Poofs' do
      expect(container.quantity).to eq(18143)
    end
    it 'weighs 70 pounds when full' do
      expect(container.weight_when_full?).to eq(70)
    end
  end

  context 'a Brussels sprouts container' do
    let (:container) {Container.new(Ingredient.new('Brussels sprout', 20), 200, 300)}
    it 'has a type Brussels sprout' do
      expect(container.type.name).to eq('Brussels sprout')
    end
    it 'has a type that is an Ingredient' do
      expect(container.type).to be_a(Ingredient)
    end
    it 'has a weight of 200' do
      expect(container.weight).to eq(200)
    end
    it 'weighs 500 when full' do
      expect(container.weight_when_full?).to eq(500)
    end
  end

end
