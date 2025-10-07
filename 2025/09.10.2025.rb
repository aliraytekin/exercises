def merge_arrays(arr1, arr2)
  merged_arr = []

  max_length = [arr1.length, arr2.length].max
  (0..max_length).each do |i|
    if arr1.length > i
      merged_arr << arr1[i]
    end
    if arr2.length > i
      merged_arr << arr2[i]
    end
  end
  merged_arr
end

p merge_arrays([1,2,3], ["a", "b", "c"])
