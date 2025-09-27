def even_or_odd(num)
  begin
    puts Integer(num).even? ? "even" : "odd" # or num % 2 == 0
  rescue ArgumentError
    puts "Please enter a valid number"
    nil
  end
end

even_or_odd(2)
even_or_odd(5)
even_or_odd("2")
even_or_odd("5")
even_or_odd("abc")
