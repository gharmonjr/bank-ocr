# frozen_string_literal: true

require 'spec_helper'
require '../lib/bank_ocr/export_file_name'

describe BankOcr::ExportFileName do
  it 'returns a new export file name' do
    export_file_name = BankOcr::ExportFileName.create_file_name_from('original')
    expect(export_file_name).to eq('original_out.txt')
  end
end
