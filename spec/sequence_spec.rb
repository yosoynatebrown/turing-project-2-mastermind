require 'rspec'
require 'sequence'


describe Sequence do
  it 'exists' do
    sequence = Sequence.new(first, second, third, fourth)
    expect(sequence).to be_an_instance_of(Sequence)
  end
describe '#initialize' do
  it 'confirms argument passed' do
    red = Color.new('r')
    expect(red.color).to eq('r')
  end
end
end
