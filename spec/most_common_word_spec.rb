require 'spec_helper'

require_relative '../bin/most_common_word'

# Given a string paragraph and a string array of the banned words banned, return the most frequent
# word that is not banned. It is guaranteed there is at least one word that is not banned, and that
# the answer is unique.
#
#   The words in paragraph are case-insensitive and the answer should be returned in lowercase.
describe 'most_common_word' do
  context 'when sentence does not have repeated words' do
    it 'be empty' do
      sentence = "Monkeys love banana, but it is Minions references"

      expect(most_common_word(sentence, [])).to eq('monkeys')
    end
  end

  context 'when sentence has repeated words' do
    let(:sentence) { "Banana! Monkeys love banana, but banana love song is Minions references" }

    context 'and its includes banned words' do
      it 'returns most_common_word' do
        expect(most_common_word(sentence, [])).to eq('banana')
      end
    end

    context 'and its includes banned words' do
      it 'returns non-banned most_common_word' do
        banned = ['banana']

        expect(most_common_word(sentence, banned)).to eq('love')
      end
    end
  end

end
