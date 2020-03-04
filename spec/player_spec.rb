require 'player'

describe Player do
  subject(:ion) { Player.new('Ion') }

  describe '#name' do
    it 'returns the name' do
      expect(ion.name).to eq 'Ion'
    end
  end
end
