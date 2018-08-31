require 'pry'
require './denumeralize'

describe 'denumeralize' do
  subject { denumeralize(numerals) }

  context 'given I' do
    let (:numerals) { 'I' }

    it 'outputs 1' do
      expect(subject).to eq(1)
    end
  end

  context 'given II' do
    let (:numerals) { 'II' }

    it 'outputs 2' do
      expect(subject).to eq(2)
    end
  end

  context 'given V' do
    let (:numerals) { 'V' }

    it 'outputs 5' do
      expect(subject).to eq(5)
    end
  end

  context 'given VI' do
    let (:numerals) { 'VI' }

    it 'outputs 6' do
      expect(subject).to eq(6)
    end
  end

  context 'given XVI' do
    let (:numerals) { 'XVI' }

    it 'outputs 16' do
      expect(subject).to eq(16)
    end
  end

  context 'given LXVI' do
    let (:numerals) { 'LXVI' }

    it 'outputs 66' do
      expect(subject).to eq(66)
    end
  end

  context 'given CLXVI' do
    let (:numerals) { 'CLXVI' }

    it 'outputs 166' do
      expect(subject).to eq(166)
    end
  end

  context 'given MDCLXVI' do
    let (:numerals) { 'MDCLXVI' }

    it 'outputs 15166' do
      expect(subject).to eq(1666)
    end
  end

  context 'given IV' do
    let (:numerals) { 'IV' }

    it 'outputs 4' do
      expect(subject).to eq(4)
    end
  end

  context 'given DMLCVXI' do
    let (:numerals) { 'DMLCVXI' }

    it 'outputs 556' do
      expect(subject).to eq(556)
    end
  end

  context 'given CCLXXXIX' do
    let (:numerals) { 'CCLXXXIX' }

    it 'outputs 289' do
      expect(subject).to eq(289)
    end
  end
end