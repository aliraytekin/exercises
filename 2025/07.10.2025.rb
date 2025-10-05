def count_characters(str)
  return "Please enter a string" unless str.is_a?(String)

  hash = {}
  chars = str.chars

  chars.each do |c|
    hash[c] = (hash[c] || 0) + 1
  end

  hash
end

puts count_characters("hello")
puts count_characters("causing")

def other_counter(str)
  str.chars.tally
end

puts other_counter("helloo lady")
