def palindrome(word)
  if word.is_a?(String)
    puts word == word.reverse
  elsif word.is_a?(Array)
    word.each do |str|
      if str.is_a?(String)
        puts "#{str}: #{str == str.reverse}"
      else
        puts "#{str}: Please enter a string"
      end
    end
  else
    puts "Please enter a string, #{word} is not a valid input"
  end
end

palindrome("level") # true
palindrome("gosh") # false
palindrome(123)
palindrome(["love", "level"])
