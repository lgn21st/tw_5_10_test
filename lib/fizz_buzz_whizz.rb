class FizzBuzzWhizz
  attr_accessor :fizz, :buzz, :whizz

  def initialize(fizz=3, buzz=5, whizz=7)
    @fizz = fizz
    @buzz = buzz
    @whizz = whizz
  end

  def result(n)
    rule_five(n) || rule_four(n) || rule_three(n) || n
  end

  private

  def rule_three(n)
    case
    when n % @fizz == 0
      'Fizz'
    when n % @buzz == 0
      'Buzz'
    when n % @whizz == 0
      'Whizz'
    end
  end

  def rule_four(n)
    if n % (@fizz * @buzz) == 0
      return 'FizzBuzz'
    end
  end

  def rule_five(n)
    n = n.to_s
    if n[@fizz.to_s]
      'Fizz'
    end
  end

end
