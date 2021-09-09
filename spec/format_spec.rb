# frozen_string_literal: true

require 'spec_helper'
require 'bank_ocr/format'
require '../lib/bank_ocr/account_status'
require '../lib/bank_ocr/checksum'

describe BankOcr::Format do
  let(:account_numbers) do
    [[0, 0, 0, 0, 0, 0, 0, 5, 1], [0, 0, 0, 0, 0, 0, 0, 5, 7], [1, 2, 3, 4, "'", 6, 7, 8, '?']]
  end

  describe '#account_numbers' do
    it 'returns a file with account numbers and a status' do
      formatted_account_numbers = BankOcr::Format.account_numbers(account_numbers)
      expect(formatted_account_numbers).to eq("000000051  \n000000057 ERR \n1234'678? ILL \n")
    end
  end
end
