require 'rspec'
require 'color'


describe Color do
  it 'exists' do
    red = Color.new('r')
    expect(red).to be_an_instance_of(Color)
  end
describe '#initialize' do
  it 'confirms argument passed' do
    red = Color.new('r')
    expect(red.color).to eq('r')
  end
end
describe '#color_converter' do
  it 'ensure the color key converts to value' do
    red = Color.new('r')

    expect(red.color_converter).to eq('red')
  end
end
end
