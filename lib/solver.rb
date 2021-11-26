class Solver
  def factorial(number)
    raise StandardError.new('factorial(n) N is negative') if number.negative?

    return 1 if [0, 1].include?(number)

    factorial(number - 1) * number
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    if (number % 15).zero?
      'fizzbuzz'
    elsif (number % 5).zero?
      'buzz'
    elsif (number % 3).zero?
      'fizz'
    else
      number.to_s
    end
  end
end
