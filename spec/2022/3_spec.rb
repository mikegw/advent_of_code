# frozen_string_literal: true

require 'solutions'

describe Solutions::Year2022::Day3 do
  include described_class

  let(:sample) do
    %w[
      vJrwpWtwJgWrhcsFMMfFFhFp
      jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
      PmmdzqPrVvPwwTWBwg
      wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
      ttgJtRGJQctTZtZT
      CrZsJsPPZsGzwwsLwLmpwMDw
    ]
  end

  it 'matches the sample output for part A' do
    expect(part_a(sample)).to eq(157)
  end

  it 'matches the sample output for part B' do
    expect(part_b(sample)).to eq(70)
  end
end
