require_relative '../../lib/container'

describe Container do

  context 'a Cheesy Poofs container' do
    let (:container) {Container.new('Cheesy Poofs', 50, 20)}
    it 'has a type Cheesy Poofs' do
      expect(container.type).to eq('Cheesy Poofs')
    end
  end

end
