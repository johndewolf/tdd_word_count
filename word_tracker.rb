class WordTracker
require 'pry'
  def initialize(phrase)
    @phrase = phrase.to_s
  end

  def individual_words
    @phrase.downcase.split(' ')
  end

  def unique_words_hash
    @word_count = {}
    individual_words.uniq.each do |word|
      @word_count[word] = 0
    end
    @word_count
  end

  def frequency
    unique_words_hash
    individual_words.each do |word|
      @word_count[word] += 1
    end
    @word_count
  end
end
