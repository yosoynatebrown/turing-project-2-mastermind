require 'rspec'
require 'sequence'


describe Sequence do
  it 'exists' do
    sequence = Sequence.new(['g', 'r', 'r', 'b'])
    expect(sequence).to be_an_instance_of(Sequence)
  end
  describe '#initialize' do
    it 'creates a colors array instance variable' do
      sequence = Sequence.new(['g', 'r', 'r', 'b'])

      expect(sequence.colors).to eq(['g', 'r', 'r', 'b'])
    end
  end
end
