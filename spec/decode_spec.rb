# frozen_string_literal: true

require 'spec_helper'
require '../lib/bank_ocr/decode'
require '../lib/bank_ocr/digit'

describe BankOcr::Decode do
  account_lines = [['    _  _     _  _  _  _  _ ',
                    '  | _| _||_||_ |_   ||_||_|',
                    '  ||_  _|  | _||_|  ||_| _|']]
  describe '#account_numbers' do
    it 'returns account numbers' do
      account_number = BankOcr::Decode.account_numbers(account_lines)
      expect(account_number).to eq([[1, 2, 3, 4, 5, 6, 7, 8, 9]])
    end
  end
end
