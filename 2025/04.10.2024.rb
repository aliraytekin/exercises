def reverse_sentences(sentence)
  return "Please enter a string" unless sentence.is_a?(String)
  sentence.strip.split(/\s+/).reverse.join(" ")
end

puts reverse_sentences("Ruby is fun")
