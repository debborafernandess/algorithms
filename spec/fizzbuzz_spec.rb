require 'byebug'
require_relative '../bin/fizzbuzz'

FIZZ = 'Fizz'
BUZZ = 'Buzz'

describe 'fizzbuzz' do
  context 'when given number is divisible by 3' do
    it "returns 'Fizz'" do
      expect(fizzbuzz(3)).to eq('Fizz')
    end
  end

  context 'when given number is divisible by 5' do
    it "returns 'Buzz'" do
      expect(fizzbuzz(5)).to eq('Buzz')
    end
  end

  context 'when given number is divisible by 3 and 5' do
    it "returns 'FizzBuzz'" do
      expect(fizzbuzz(15)).to eq('FizzBuzz')
    end
  end

  context 'when receive an ary of numbers' do
    it 'it returns the correctly string' do
      ary = 1..100

      expected = [
        1, 2, FIZZ, 4, BUZZ, FIZZ, 7, 8, FIZZ, BUZZ,
        11, FIZZ, 13, 14, 'FizzBuzz', 16, 17, FIZZ, 19, BUZZ,
        FIZZ, 22, 23, FIZZ, BUZZ, 26, FIZZ, 28, 29, 'FizzBuzz',
        31, 32, FIZZ, 34, BUZZ, FIZZ, 37, 38, FIZZ, BUZZ,
        41, FIZZ, 43, 44, 'FizzBuzz', 46, 47, FIZZ, 49, BUZZ,
        FIZZ, 52, 53, FIZZ, BUZZ, 56, FIZZ, 58, 59, 'FizzBuzz',
        61, 62, FIZZ, 64, BUZZ, FIZZ, 67, 68, FIZZ, BUZZ,
        71, FIZZ, 73, 74, 'FizzBuzz', 76, 77, FIZZ, 79, BUZZ,
        FIZZ, 82, 83, FIZZ, BUZZ, 86, FIZZ, 88, 89, 'FizzBuzz',
        91, 92, FIZZ, 94, BUZZ, FIZZ, 97, 98, FIZZ, BUZZ
      ]

      expect(fizzbuzzes(ary)).to eq(expected)
    end
  end
end
