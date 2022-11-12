class Solver
  def factorial(num)
    raise Exception, 'only positive integers allowed' if num.class != Integer || num.negative?
    return 1 if num.zero?

    value = num
    count = 1
    while count < num
      value *= count
      count += 1

    end
    value
  end

  def reverse(string)
    raise Exception, 'only strings are allowed as arguments' if string.class != String

    string.reverse!
  end

  def fizzbuzz(num)
    raise Exception, 'only positive integers are allowed as arguments' if num.class != Integer

    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'

    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      'random value with no result'
    end
  end
end
solve = Solver.new
puts solve.fizzbuzz(2)
