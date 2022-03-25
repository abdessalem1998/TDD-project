class Solver
  def factorial(num)
    raise TypeError, 'the number must > 0' if num.negative?
    [0].include?(num) ? 1 : factorial(num-1) * num
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3 && number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?
    number.to_s
  end

end

app = Solver.new
puts app.fizzbuzz(7)


