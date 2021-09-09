# frozen_string_literal: true

module BankOcr
  class Parse
    def self.account_lines(file_contents)
      file_contents.each_line.each_slice(4).to_a
    end
  end
end
