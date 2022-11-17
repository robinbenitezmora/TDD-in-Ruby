class Solver
  def factorial(num)
    num.negative? ? (raise ArgumentError, 'num must be positive') : (1..num).reduce(:*) || 1
  end

  def reverse(word)
    raise ArgumentError, 'word must be a string' unless word.is_a? String

    word.reverse
  end

  def fizzbuzz(num)
    return unless num.is_a? Integer

    if (num % 15).zero?
      'FizzBuzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'
    else
      num.to_s
    end
  end
end
