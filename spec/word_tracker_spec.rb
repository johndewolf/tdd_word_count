require './word_tracker'
require 'rspec'

describe WordTracker do
  it 'returns a hash when given a string' do
    expect(WordTracker.new('test').frequency).to be_a (Hash)
  end

  it 'returns a hash that has the words as a value and count as keys' do
    expect(WordTracker.new('test test best').frequency).to eql('test' => 2, 'best' => 1)
  end

  it 'does not count different cases as different words' do
    expect(WordTracker.new('TEST test Test').frequency).to eql('test' => 3)
  end

  it 'counts a number if given a number' do
    expect(WordTracker.new(1).frequency).to eql('1' => 1)
  end

  it 'counts the numbe of occurances of each word' do
    expect(WordTracker.new('Toy boat toy boat toy boat').frequency).to eql('toy' => 3, 'boat' => 3)
  end

  it 'counts compound words correctly' do
    expect(WordTracker.new('toy-boat toy-boat').frequency).to eql('toy-boat' => 2)
  end

end
# describe Circle do
#   let(:circle) { Circle.new(4) }

#   it 'returns the perimeter when given the radius' do
#     expect(circle.parimeter.round(2)).to eql(25.13)
#   end

#   it 'returns the area when given the radius' do
#     expect(circle.area.round(2)).to eql(50.27)
#   end
# end
