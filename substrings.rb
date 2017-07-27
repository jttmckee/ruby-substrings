def substrings (phrase, dictionary)
  wordsFound = Hash.new
  phrase.downcase!

  dictionary.each do |word|
    word.downcase!
    startIndex = -1
    numOccurrences = -1
    while startIndex != nil
      numOccurrences += 1
      startIndex = phrase.index(word, startIndex + 1)
      puts word + startIndex.to_s
    end

    wordsFound[word] = numOccurrences unless numOccurrences == 0

  end

  return wordsFound
end
