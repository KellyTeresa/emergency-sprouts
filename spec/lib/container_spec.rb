require_relative '../../lib/container'

describe Container do

  context 'a Cheesy Poofs container' do
    let (:container) {Container.new('Cheesy Poofs', 50, 20)}
    it 'has a type Cheesy Poofs' do
      expect(container.type).to eq('Cheesy Poofs')
    end
    it 'has a weight of 50' do
      expect(container.weight).to eq(50)
    end
    it 'has a capacity of 20' do
      expect(container.capacity).to eq(20)
    end
  end

end
