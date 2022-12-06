module Solutions
  module Year2022
    module Day4
      def part_a(raw_section_pairs)
        section_pairs = raw_section_pairs.map { parse_section_pair(_1) }

        section_pairs.count do |first_section, second_section|
          first_section.cover?(second_section) ||
            second_section.cover?(first_section)
        end
      end

      def part_b(raw_section_pairs)
        section_pairs = raw_section_pairs.map { parse_section_pair(_1) }

        section_pairs.count do |first_section, second_section|
          first_section.entries.intersect?(second_section.entries)
        end
      end

      private

      def parse_section_pair(raw_section_pair)
        raw_sections = raw_section_pair.split(',')

        section_boundaries = raw_sections.map { _1.split('-').map(&:to_i) }

        section_boundaries.map { |min, max| Range.new(min, max) }
      end
    end
  end
end
