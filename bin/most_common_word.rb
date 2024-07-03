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
