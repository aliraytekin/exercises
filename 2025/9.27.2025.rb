def fizzbuzz(num)
  begin
    n = Integer(num)
  rescue ArgumentError, TypeError
    puts "Please enter a valid number"
    return
  end

  if n <= 50
    if n % 3 == 0 && n % 5 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else
      puts "#{n}"
    end
  else
    puts "The number must be below 50"
  end
end

fizzbuzz(4)
fizzbuzz(3)
fizzbuzz(12)
fizzbuzz(15)
fizzbuzz(55)
fizzbuzz("abc")
fizzbuzz(["abc"])

(1..50).each do |n|
  if n % 3 == 0 && n % 5 == 0
    puts "FizzBuzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else
    puts n
  end
end

def safe_divide(num1, num2)
  begin
    result = num1 / num2
    puts "Result: #{result}"
  rescue ZeroDivisionError
    puts "Cannot divide by zero."
  rescue TypeError
    puts "Invalid input type! Please use numbers."
  rescue NoMethodError
    puts "Cannot divide an instance of string"
  end
end

safe_divide(10, 2)
safe_divide(10, 0)
safe_divide("ten", 2)
