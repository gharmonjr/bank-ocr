# frozen_string_literal: true

module BankOcr
  class Decode
    class << self
      def account_numbers(account_lines)
        account_numbers = []

        account_lines.each do |account_line|
          lines = []

          account_line.each do |line|
            split = line.scan(/.../)
            lines << split unless split.empty?
          end

          account_numbers << decode_number(lines[0], lines[1], lines[2])
        end
        account_numbers
      end

      private

      def decode_number(line0, line1, line2)
        decoded_number = Array.new
        (0..8).each do |n|
          decoded_digit = BankOcr::Digit.translate([line0[n], line1[n], line2[n]])
          decoded_number.push(decoded_digit)
        end
        decoded_number
      end
    end
  end
end
