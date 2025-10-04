def remove_duplicates(arr)
  raise ArgumentError, "Please return an array" unless arr.is_a?(Array)

  unique_arr = []

  arr.each do |e|
    unique_arr << e unless unique_arr.include?(e)
  end

  unique_arr
end

puts remove_duplicates([1,2,2,2,3,3,3,4])
