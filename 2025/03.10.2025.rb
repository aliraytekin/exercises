def sum_array(arr)
  raise ArgumentError, "Please enter an array" unless arr.is_a?(Array)
  raise ArgumentError, "Array must contain only integers" unless arr.all? { |n| n.is_a?(Integer) }

  arr.sum
end

puts sum_array([1, 2, 3, 4, 5])
puts sum_array([1, 15, 34, 24, 23])
