def prime_number(int)
  raise ArgumentError, "Please enter a number" unless int.is_a?(Integer)
  return false if int < 1
  return true if int == 2
  return false if int.even?

  y = 2

  if int > 2
    until y == int
      return false if int % y == 0
      y += 1
    end
    return true
  end
end


p prime_number(3)
p prime_number(1)
p prime_number(2)
p prime_number(4)
p prime_number(5)
p prime_number(6)
p prime_number(7)
