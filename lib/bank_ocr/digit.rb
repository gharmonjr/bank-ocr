# frozen_string_literal: true

module BankOcr
  class Digit
    TRANSLATION = {
      0 => [' _ ',
            '| |',
            '|_|'],
      1 => ['   ',
            '  |',
            '  |'],
      2 => [' _ ',
            ' _|',
            '|_ '],
      3 => [' _ ',
            ' _|',
            ' _|'],
      4 => ['   ',
            '|_|',
            '  |'],
      5 => [' _ ',
            '|_ ',
            ' _|'],
      6 => [' _ ',
            '|_ ',
            '|_|'],
      7 => [' _ ',
            '  |',
            '  |'],
      8 => [' _ ',
            '|_|',
            '|_|'],
      9 => [' _ ',
            '|_|',
            ' _|']
    }.freeze

    def self.translate(char)
      TRANSLATION.key(char) || '?'
    end
  end
end
