def missing_numbers(input)
  raise ArgumentError, "Please enter an array of numbers" unless input.all? { |n| n.is_a?(Integer) }

  arr = (input.first..input.last)
  missing_arr = []

  arr.each do |n|
    missing_arr << n unless input.include?(n)
  end

  missing_arr
end

puts missing_numbers([1,2,4,6])

require 'set'

def missing_number(input)
  raise ArgumentError, "Please enter an array of numbers" unless input.all? { |n| n.is_a?(Integer) }

  input = input.sort
  arr = (input.first..input.last)
  set = input.to_set

  missing_arr = []

  arr.each do |n|
    missing_arr << n unless set.include?(n)
  end

  missing_arr
end

puts missing_numbers([1,2,4,6])
