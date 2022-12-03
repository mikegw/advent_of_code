# frozen_string_literal: true

require 'solutions'

describe Solutions::Year2022::Day1 do
  include described_class

  let(:sample) do
    [
      '1000',
      '2000',
      '3000',
      '',
      '4000',
      '',
      '5000',
      '6000',
      '',
      '7000',
      '8000',
      '9000',
      '',
      '10000'
    ]
  end

  it 'finds the sum of the largest group' do
    expect(part_a(sample)).to eq(24_000)
  end

  it 'finds the sum of the top three groups' do
    expect(part_b(sample)).to eq(45_000)
  end
end
