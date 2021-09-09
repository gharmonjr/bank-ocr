# frozen_string_literal: true

require 'spec_helper'
require '../lib/bank_ocr/checksum'


describe BankOcr::Checksum do
  context 'when provided a valid account number' do
    it 'returns true' do
      valid_account_number = BankOcr::Checksum.valid?([1, 2, 3, 4, 5, 6, 7, 8, 9])
      expect(valid_account_number).to be_truthy
    end
  end

  context 'when provided an invalid account number' do
    it 'returns false' do
      valid_account_number = BankOcr::Checksum.valid?([1, 2, 3, 4, 5, 6, 8, 8, 9])
      expect(valid_account_number).to be_falsey
    end
  end

  context 'when provide a non-numeric account number' do
    it 'returns false' do
      valid_account_number = BankOcr::Checksum.valid?([1, 2, 3, 4, 5, 6, 7, '?', 9])
      expect(valid_account_number).to be_falsey
    end
  end
end
