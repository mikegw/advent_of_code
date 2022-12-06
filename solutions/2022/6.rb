module Solutions
  module Year2022
    module Day6
      PACKAGE_MARKER_LENGTH = 4
      MESSAGE_MARKER_LENGTH = 14

      def part_a(input)
        find_marker(input.first.chars, PACKAGE_MARKER_LENGTH)
      end

      def part_b(input)
        find_marker(input.first.chars, MESSAGE_MARKER_LENGTH)
      end

      private

      def find_marker(buffer, marker_length)
        potential_markers = buffer.each_cons(marker_length)

        start_of_marker =
          potential_markers.find_index { _1.uniq.length == marker_length }

        start_of_marker + marker_length
      end
    end
  end
end
