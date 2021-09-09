# frozen_string_literal: true

require 'spec_helper'
require '../lib/bank_ocr/parse'
require 'pry'

describe BankOcr::Parse do
  let(:file_contents) do
    " _  _  _  _  _  _  _  _  _ \n"\
    "| || || || || || || || || |\n"\
    "|_||_||_||_||_||_||_||_||_|\n"\
    "                           \n"\
    "                           \n"\
    "  |  |  |  |  |  |  |  |  |\n"\
    "  |  |  |  |  |  |  |  |  |\n"\
    "                           \n"
  end
  describe '#account_lines' do
    it 'returns an array of account_lines' do
      account_lines = BankOcr::Parse.account_lines(file_contents)
      expect(account_lines).to eq([
                                    [
                                      " _  _  _  _  _  _  _  _  _ \n",
                                      "| || || || || || || || || |\n",
                                      "|_||_||_||_||_||_||_||_||_|\n",
                                      "                           \n"
                                    ],
                                    [
                                      "                           \n",
                                      "  |  |  |  |  |  |  |  |  |\n",
                                      "  |  |  |  |  |  |  |  |  |\n",
                                      "                           \n"
                                    ]
                                  ])
    end
  end
end
