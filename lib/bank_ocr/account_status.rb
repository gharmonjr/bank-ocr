# frozen_string_literal: true

module BankOcr
  class AccountStatus
    def initialize(checksum = BankOcr::Checksum)
      @checksum = checksum
    end

    def result(account_number)
      valid_checksum = checksum.valid?(account_number)
      if valid_checksum
        ''
      elsif !valid_checksum && account_number.include?('?')
        'ILL'
      else
        'ERR'
      end
    end

    private

    attr_reader :checksum
  end
end
