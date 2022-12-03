# frozen_string_literal: true

module Solutions
  module Year2022
    module Day1
      def part_a(input)
        calories_per_elf(input).max
      end

      def part_b(input)
        calories_per_elf(input).max(3).sum
      end

      private

      def calories_per_elf(input)
        elves = input.slice_when(&:empty?)

        elves.map { |elf| elf.sum(&:to_i) }
      end
    end
  end
end
