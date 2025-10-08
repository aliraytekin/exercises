def anagram_checker(word1, word2)
  return "Please enter the same number of characters for each word" unless word1.length == word2.length
  return "Please return strings" unless word1.is_a?(String) && word2.is_a?(String)

  word1.chars.sort == word2.chars.sort
end

puts anagram_checker("listen", "silent")
puts anagram_checker("lis", "si")
puts anagram_checker("lis", "sii")
