def starts_with_a_vowel?(word)
    return /[aeiou]/i.match?(word[0])
end

def words_starting_with_un_and_ending_with_ing(text)
    array = text.split(' ')
    array.select{|word| word.match?(/ing/) || word.match?(/un/)}
end

def words_five_letters_long(text)
    array = text.split
    array.select{|word| word.length == 5}
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    last = text.length - 1
    if text[0].match?(/[A-Z]/) && text[last].match?(/\W/)
      true
    else
      false
    end
end

def valid_phone_number?(phone)
    num = phone.gsub(/\D/, '')
    num.length == 10 ? true : false;
end
