def substrings (string, dictionary)

  word_count = Hash.new(0)

  def check_dictionary (word, dictionary, word_count) #check dictionary, if found then add appropriate keys and values
    index = 0
    while (index < dictionary.length)
      (word.include?(dictionary[index])) ? word_count[dictionary[index]] += 1 : nil
      index += 1
    end
  end

  string_array = string.downcase.split(' ') #lower-case then split by space
  string_array.each { |word| word.gsub!(/\W/,'') #trim each word (remove anything that's not a letter
                      check_dictionary(word, dictionary, word_count)}
  puts word_count
end
