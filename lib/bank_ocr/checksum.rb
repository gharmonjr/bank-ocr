# frozen_string_literal: true

module BankOcr
  class Checksum
    def self.valid?(account_number)
      return false if account_number.include?('?')

      d1    = account_number[8]
      d2    = account_number[7]
      d3    = account_number[6]
      d4    = account_number[5]
      d5    = account_number[4]
      d6    = account_number[3]
      d7    = account_number[2]
      d8    = account_number[1]
      d9    = account_number[0]

      ((d1 + 2 * d2 + 3 * d3 + 4 * d4 + 5 * d5 + 6 * d6 + 7 * d7 + 8 * d8 + 9 * d9) % 11).zero?
    end
  end
end
