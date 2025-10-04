def count_vowels(str)
  begin
    str.chars
  rescue NoMethodError
    puts "Please enter a valid value"
    return
  end

  count = 0

  if str.is_a?(String)
    str.chars do |s|
      count += 1 if s.match('[aeiou]')
    end

  puts count
  end
end

count_vowels("the")
count_vowels("deprogramming")
count_vowels("offer")
count_vowels(123)
count_vowels("")
count_vowels(nil)
count_vowels(["serve", "offer", "deprogramming"])

# Improved

def count_vowels(input)
  if input.is_a?(String)
    count = input.chars.count { |c| c.match?(/[aeiou]/i) }
    puts count

  elsif input.is_a?(Array)
    input.each do |word|
      if word.is_a?(String)
        count = word.chars.count { |c| c.match?(/[aeiou]/i) }
        puts "#{word}: #{count}"
      else
        puts "#{word.inspect}: not a valid word"
      end
    end

  else
    puts "Please enter a valid string or array of strings"
  end
end

count_vowels("the")
count_vowels(["serve","offer","program"])
count_vowels(123)
