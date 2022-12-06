module Solutions
  module Year2022
    module Day5
      MOVE_FORMAT = /move (?<count>\d+) from (?<from>\d+) to (?<to>\d+)/
      Move = Struct.new(:count, :from, :to, keyword_init: true)

      def part_a(input)
        stacks, moves = parse_input(input)

        moves.each do |move|
          move.count.times { stacks[move.to] << stacks[move.from].pop }
        end

        build_output(stacks)
      end

      def part_b(input)
        stacks, moves = parse_input(input)

        moves.each do |move|
          stacks[move.to] += stacks[move.from].pop(move.count)
        end

        build_output(stacks)
      end

      private

      def parse_input(input)
        stacks_input_length = input.index('')
        stacks_input = input.take(stacks_input_length)
        stacks = parse_stacks_input(stacks_input)

        moves_input = input[(stacks_input_length + 1)..]
        moves = moves_input.map { parse_move_input(_1) }

        [stacks, moves]
      end

      def parse_stacks_input(stacks_input)
        stack_numbers = stacks_input.pop.scan(/\d/)
        stack_input_columns = stacks_input.reverse.map(&:chars).transpose
        stacks = stack_input_columns.select { ('A'..'Z').cover?(_1.first) }
        stacks.each { _1.delete(' ') }

        stack_numbers.zip(stacks).to_h
      end

      def parse_move_input(move_input)
        parsed_move_input = MOVE_FORMAT.match(move_input).named_captures

        move = Move.new(parsed_move_input)
        move.count = move.count.to_i

        move
      end

      def build_output(stacks)
        stacks.values.map(&:last).join
      end
    end
  end
end
