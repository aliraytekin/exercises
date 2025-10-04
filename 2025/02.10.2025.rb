def maximum_number(arr)
  raise ArgumentError, "Need an array to find the highest number" unless arr.is_a?(Array)
  raise ArgumentError, "The array must contain only integers" unless arr.all? { |n| n.is_a?(Integer) }

  highest_num = arr.first # using 0 will not return highest number if all the array's integers are negative.

  arr.each do |num|
    highest_num = num if highest_num < num
  end
  highest_num
end

puts maximum_number([1, 54, 52, 23, 52, 13, 51, 62])

# Other version with max:

def maximum_number(arr)
  raise ArgumentError, "Need an array of integers" unless arr.is_a?(Array) && arr.all? { |n| n.is_a?(Integer) }
  arr.max
end

puts maximum_number([1, 54, 52, 23, 52, 13, 51, 62])
