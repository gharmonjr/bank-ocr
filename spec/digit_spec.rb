# frozen_string_literal: true

require 'spec_helper'
require '../lib/bank_ocr/digit'

describe BankOcr::Digit do
  it 'translates a zero' do
    char = [' _ ', '| |', '|_|']
    expect(BankOcr::Digit.translate(char)).to eq(0)
  end

  it 'translates a one' do
    char = ['   ', '  |', '  |']
    expect(BankOcr::Digit.translate(char)).to eq(1)
  end

  it 'translates a two' do
    char = [' _ ', ' _|', '|_ ']
    expect(BankOcr::Digit.translate(char)).to eq(2)
  end

  it 'translates a three' do
    char = [' _ ', ' _|', ' _|']
    expect(BankOcr::Digit.translate(char)).to eq(3)
  end

  it 'translates a four' do
    char = ['   ', '|_|', '  |']
    expect(BankOcr::Digit.translate(char)).to eq(4)
  end

  it 'translates a five' do
    char = [' _ ', '|_ ', ' _|']
    expect(BankOcr::Digit.translate(char)).to eq(5)
  end

  it 'translates a six' do
    char = [' _ ', '|_ ', '|_|']
    expect(BankOcr::Digit.translate(char)).to eq(6)
  end

  it 'translates a seven' do
    char = [' _ ', '  |', '  |']
    expect(BankOcr::Digit.translate(char)).to eq(7)
  end

  it 'translates an eight' do
    char = [' _ ', '|_|', '|_|']
    expect(BankOcr::Digit.translate(char)).to eq(8)
  end

  it 'translates a nine' do
    char = [' _ ', '|_|', ' _|']
    expect(BankOcr::Digit.translate(char)).to eq(9)
  end


  it 'returns a question mark unless a valid number is provided' do
    char = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    expect(BankOcr::Digit.translate(char)).to eq('?')

  end
end
