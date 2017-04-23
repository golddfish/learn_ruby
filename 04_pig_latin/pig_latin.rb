#write your code here

def translate(sentence)
  words = sentence.split
  words.each_with_index {|word,i |
    new = translate_word(word);
    words[i] = new
  }
  words.join(" ")
end

def translate_word(word)
  cons = /\A[b-df-hj-np-tv-z]/
  vowel = /\A[aeiou]/
  first_two_letters = word[0..1]
  if first_two_letters == 'qu'
    first_letter = 'qu'
  else
    first_letter = word[0]
  end

  if(first_letter =~ cons)
    word = word.sub(first_letter,'')  << first_letter
    return translate_word(word)
  end
  word << "ay"
end