# frozen_string_literal: true

module BankOcr
  class Format
    def self.account_numbers(account_numbers)
      formatted_account_numbers = ''
      account_numbers.each do |account_number|
        status = BankOcr::AccountStatus.new.result(account_number)

        formatted_account_numbers += account_number.collect(&:to_s).join + " #{status} \n"
      end
      formatted_account_numbers
    end
  end
end
