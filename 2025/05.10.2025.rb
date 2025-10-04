def factorial_number(num)
  raise ArgumentError, "Please enter a number" unless num.is_a?(Integer)
  raise ArgumentError, "All numbers must be higher than 0" if num.negative?

  result = 1
  (1..num).each do |n|
    result *= n
  end
  result
end

puts factorial_number(4)
