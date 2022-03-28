# Takes a string and an array of strings and gives number of matches as a hash
def substring(str,library)
    # Puts letters in lowercase and scans for punctuation and removes them and puts string into an array
    str_array = str.downcase.scan(/[\w']+/)
    # combine string and library
    combine = str_array + lib
    # Finds matches, adds a counter, returns hash
    combine.reduce(Hash.new(0)) do |word, total|
      word.store(total, word[total] + 1)
      word
    end
  end