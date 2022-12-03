# frozen_string_literal: true

module Solutions
  class UNSOLVEABLE < StandardError; end
end

$LOAD_PATH.unshift File.expand_path(__dir__)

Dir['solutions/**/*.rb'].each { |f| require f }
