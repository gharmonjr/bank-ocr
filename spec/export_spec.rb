# frozen_string_literal: true

require 'spec_helper'
require '../lib/bank_ocr/export'
require 'pry'

describe BankOcr::Export do
  it 'will create a file with accounts and statuses listed' do
    result_file = 'todays_accounts_out.txt'
    formatted_accounts = "000000051  \n000000057 ERR \n1234'678? ILL \n"
    BankOcr::Export.write_to_file(result_file, formatted_accounts)
    expect(File.read(result_file)).to eq(formatted_accounts)
  end
end
