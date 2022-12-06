require 'solutions'

describe Solutions::Year2022::Day6 do
  include described_class

  let(:sample) do
    ['nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg']
  end

  it 'matches the sample output for part A' do
    expect(part_a(sample)).to eq(10)
  end

  it 'matches the sample output for part B' do
    expect(part_b(sample)).to eq(29)
  end
end
