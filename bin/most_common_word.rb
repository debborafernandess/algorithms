# Given a string paragraph and a string array of the banned words banned, return the most frequent
# word that is not banned. It is guaranteed there is at least one word that is not banned, and that
# the answer is unique.
#
#   The words in paragraph are case-insensitive and the answer should be returned in lowercase.

def most_common_word(sentence, banned)
  words = sentence.downcase.gsub(/[^a-z]/, ' ').split(' ') - banned

  count = {}

  words.each do |word|
    if count.key?(word)
      count[word] += 1
    else
      count[word] = 1
    end
  end

  count.max_by { |key, value| value }.first
end
