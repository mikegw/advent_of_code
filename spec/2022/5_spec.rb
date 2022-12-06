require 'solutions'

describe Solutions::Year2022::Day5 do
  include described_class

  let(:sample) do
    <<~SAMPLE.split("\n")
          [D]    
      [N] [C]    
      [Z] [M] [P]
       1   2   3 

      move 1 from 2 to 1
      move 3 from 1 to 3
      move 2 from 2 to 1
      move 1 from 1 to 2
    SAMPLE
  end

  it 'matches the sample output for part A' do
    expect(part_a(sample)).to eq('CMZ')
  end

  it 'handles multiple consecutive blanks in a line' do
    sample = <<~SAMPLE.split("\n")
                  [A]
      [B] [C] [D] [E]
       1   2   3   4

      move 1 from 4 to 1
    SAMPLE

    expect(part_a(sample)).to eq('ACDE')
  end

  it 'matches the sample output for part B' do
    expect(part_b(sample)).to eq('MCD')
  end
end
