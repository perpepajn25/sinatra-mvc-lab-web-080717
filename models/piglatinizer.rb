class PigLatinizer

  def piglatinize(word)
      if word.start_with?("a","e","i","o","u","A","E","I","O","U")
          word + "way"
      else
          letters = word.split("")
          new_word = []
          i = 0
            until letters[i].match(/[AaEeIiOoUu]/) do
                new_word << letters[i]
                letters.shift
              end
          letters.join + new_word.join +  "ay"
      end
  end

  def to_pig_latin(text)
    array_words = text.split
    array_words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
