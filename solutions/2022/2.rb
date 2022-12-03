# frozen_string_literal: true

module Solutions
  module Year2022
    module Day2
      def part_a(input)
        input.sum do |row|
          raw_opponent_throw, raw_player_throw = row.split

          opponent_throw = Opponent::THROWS[raw_opponent_throw]
          player_throw = Player::THROWS[raw_player_throw]

          outcome = outcome(opponent_throw, player_throw)

          score(player_throw, outcome)
        end
      end

      def part_b(input)
        input.sum do |row|
          raw_opponent_throw, raw_outcome = row.split

          opponent_throw = Opponent::THROWS[raw_opponent_throw]
          outcome = Player::OUTCOMES[raw_outcome]
          player_throw = pick_throw_for_outcome(opponent_throw, outcome)

          score(player_throw, outcome)
        end
      end

      THROWS = %i[rock paper scissors].freeze

      module Opponent
        THROWS = {
          'A' => :rock,
          'B' => :paper,
          'C' => :scissors
        }.freeze
      end

      module Player
        THROWS = {
          'X' => :rock,
          'Y' => :paper,
          'Z' => :scissors
        }.freeze

        OUTCOMES = {
          'X' => :loss,
          'Y' => :draw,
          'Z' => :win
        }.freeze
      end

      THROW_SCORES = {
        rock: 1,
        paper: 2,
        scissors: 3
      }.freeze

      OUTCOME_SCORES = {
        win: 6,
        draw: 3,
        loss: 0
      }.freeze

      def score(players_throw, outcome)
        THROW_SCORES[players_throw] + OUTCOME_SCORES[outcome]
      end

      def pick_throw_for_outcome(opponents_throw, required_outcome)
        THROWS.find do |players_throw|
          outcome(opponents_throw, players_throw) == required_outcome
        end
      end

      def outcome(opponents_throw, players_throw)
        opponents_throw_index = THROWS.index(opponents_throw)

        case players_throw
        when THROWS[(opponents_throw_index + 1) % 3]
          :win
        when THROWS[(opponents_throw_index - 1) % 3]
          :loss
        else
          :draw
        end
      end
    end
  end
end
