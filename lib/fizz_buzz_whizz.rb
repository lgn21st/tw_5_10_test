class FizzBuzzWhizz
  attr_accessor :fizz, :buzz, :whizz

  def initialize(fizz=3, buzz=5, whizz=7)
    @fizz = fizz
    @buzz = buzz
    @whizz = whizz
  end

  def result(n)
    result = rule_five(n.to_s)
    return result if result

    case
    when n % @fizz == 0
      'Fizz'
    when n % @buzz == 0
      'Buzz'
    when n % @whizz == 0
      'Whizz'
    end
  end

  private

  def rule_five(n)
    if n[@fizz.to_s]
      'Fizz'
    end
  end

end
