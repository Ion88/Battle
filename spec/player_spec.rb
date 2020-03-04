require 'player'

describe Player do
  subject(:ion) { Player.new('Ion') }
  subject(:chloe) { Player.new('Chloe') }

  describe '#name' do
    it 'returns the name' do
      expect(ion.name).to eq 'Ion'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(ion.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(chloe).to receive(:receive_damage)
      ion.attack(chloe)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { ion.receive_damage }.to change { ion.hit_points }.by(-10)
    end
  end
end
