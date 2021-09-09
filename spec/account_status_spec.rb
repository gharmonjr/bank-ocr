# frozen_string_literal: true

require 'spec_helper'
require '../lib/bank_ocr/account_status'
require '../lib/bank_ocr/checksum'

describe BankOcr::AccountStatus do
  let(:checksum) { double(BankOcr::Checksum) }

  subject { BankOcr::AccountStatus.new(checksum) }

  context 'when provided a valid account number' do
    before do
      allow(checksum).to receive(:valid?).and_return(true)
    end

    it 'returns an empty string' do
      status = subject.result([1, 2, 3, 4, 5, 6, 7, 8, 9])
      expect(status).to eq('')
    end
  end

  context 'when provided an invalid account number' do
    before do
      allow(checksum).to receive(:valid?).and_return(false)
    end
    it 'returns a string containing ERR' do
      status = subject.result([1, 2, 3, 4, 5, 6, 8, 8, 9])
      expect(status).to eq('ERR')
    end
  end

  context 'when provided an account number containing a question mark' do
    before do
      allow(checksum).to receive(:valid?).and_return(false)
    end

    it 'returns a string containing ILL' do
      status = subject.result([1, 2, 3, 4, 5, 6, 7, '?', 9])
      expect(status).to eq('ILL')
    end
  end
end
