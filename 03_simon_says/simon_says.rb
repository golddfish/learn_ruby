#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word,amount = 2)
  string = ''
  amount.times do |n|
    if n + 1 == amount
      string += "#{word}"
    else
      string += "#{word} "
    end
  end
  string
end

def start_of_word(word,i)
  index = i -1
  word[0..index]
end

def first_word(sentence)
  word = sentence.split
  word[0]
end

def titleize(sentence)
  words = sentence.split
  little_words = %w{and or over the in }

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