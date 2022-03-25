class Solver
  def factorial(num)
    raise TypeError, 'the number must > 0' if num.negative?
    [0].include?(num) ? 1 : factorial(num-1) * num
  end

  def reverse(word)
    word.reverse
  end
end

app = Solver.new
puts app.reverse('hello')
