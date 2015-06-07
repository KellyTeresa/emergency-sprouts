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

  end
end
