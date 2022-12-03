# frozen_string_literal: true

module Solutions
  module Year2022
    module Day3
      ITEM_PRIORITIES = [nil, *('a'..'z'), *('A'..'Z')].freeze

      def part_a(input)
        input.sum do |row|
          compartment_size = row.length / 2
          compartments = row.chars.each_slice(compartment_size)

          shared_between_compartments = shared_item(compartments)
          ITEM_PRIORITIES.index(shared_between_compartments)
        end
      end

      def part_b(input)
        groups = input.map(&:chars).each_slice(3)
        badges = groups.map { shared_item(_1) }

        badges.sum { ITEM_PRIORITIES.index(_1) }
      end

      def shared_item(groups_of_items)
        groups_of_items.reduce(&:intersection).first
      end
    end
  end
end
