def capitalize_sentence(input)
  words =
    case input
    when String
      input.strip.split(/\s+/)
    when Array
      input
    else
      return "Please enter an array or string"
    end

    words.map(&:capitalize).join(" ")
end

puts capitalize_sentence("Leave them alone")
puts capitalize_sentence(["Leave", "them", "alone"])
