class Book
# write your code here
  attr_writer :title
    def title
      titleize( @title)
    end

    def titleize(sentence)
      words = sentence.split
      little_words = %w{and or over the in of a an}
      words.each_with_index do |word , i|
        if(little_words.include?(word))
          modified_word = i == 0 ? word.capitalize : word;
        else
          modified_word = word.capitalize
        end
        words[i] = modified_word;
      end
      words.join " "
    end
end
