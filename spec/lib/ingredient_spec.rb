require_relative '../../lib/ingredient'

describe Ingredient do
  context 'Brussels sprout' do
    let (:ingredient) {Ingredient.new('Brussels sprout', 20)}
    it 'has a name "Brussels sprout"' do
      expect(ingredient.name).to eq('Brussels sprout')
    end
    it 'has a weight 20 grams' do
      expect(ingredient.weight).to eq(20)
    end
  end

  context 'Cheesy Poof' do
    let (:ingredient) {Ingredient.new('Cheesy Poof', 0.5)}
    it 'has a name "Cheesy Poof"' do
      expect(ingredient.name).to eq('Cheesy Poof')
    end
    it 'has a weight 0.5 grams' do
      expect(ingredient.weight).to eq(0.5)
    end
    it 'has 907 per pound' do
      expect(ingredient.number_per_pound).to eq(907)
    end
  end
end
