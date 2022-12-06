require 'solutions'

describe Solutions::Year2022::Day4 do
  include described_class

  let(:sample) do
    %w[
      2-4,6-8
      2-3,4-5
      5-7,7-9
      2-8,3-7
      6-6,4-6
      2-6,4-8
    ]
  end

  it 'matches the sample output for part A' do
    expect(part_a(sample)).to eq(2)
  end

  it 'orders numbers by value (not lexicographically' do
    sample_with_more_digits = %w[200-1000,230-290]
    expect(part_a(sample_with_more_digits)).to eq(1)
  end

  it 'matches the sample output for part B' do
    expect(part_b(sample)).to eq(4)
  end
end
