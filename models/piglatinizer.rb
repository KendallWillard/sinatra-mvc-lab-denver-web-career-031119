require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def pig_latinizer
    result = ""
    my_words = text.split(' ')
    my_words.each { |word|
      word = word.split('')
      word.each { |letter|
        # binding.pry
        if (word[0][0] != letter)
          result << letter
        end
      }
      result << word[0][0]
      result << "ay "
    }
    result
  end

end
