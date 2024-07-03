require 'spec_helper'

require_relative '../bin/fizzbuzz'

describe 'fizzbuzz' do
  context 'when given number is divisible by 3' do
    it 'returns fizz' do
      expect(fizzbuzz(9)).to eq('fizz')
    end
  end

  context 'when given number is divisible by 5' do
    it 'returns buzz' do
      expect(fizzbuzz(5)).to eq('buzz')
    end
  end

  context 'when given number is divisible by 3 or 5' do
    it 'returns buzz' do
      expect(fizzbuzz(15)).to eq('fizzbuzz')
    end
  end

  context 'when given number is undivisible by 3 or 5' do
    it 'returns buzz' do
      n = 158

      expect(fizzbuzzes([18, 15, 3, 5,n] )).to eq(['fizz', 'fizzbuzz', 'fizz', 'buzz', n])
    end
  end
end

