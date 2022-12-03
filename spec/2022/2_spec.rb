# frozen_string_literal: true

require 'solutions'

describe Solutions::Year2022::Day2 do
  include described_class

  let(:sample) do
    [
      'A Y',
      'B X',
      'C Z'
    ]
  end

  it 'matches the sample output for part A' do
    expect(part_a(sample)).to eq(15)
  end

  it 'matches the sample output for part B' do
    expect(part_b(sample)).to eq(12)
  end
end
