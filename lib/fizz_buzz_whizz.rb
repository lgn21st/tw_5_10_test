class FizzBuzzWhizz
  attr_accessor :fizz, :buzz, :whizz

  def initialize(fizz=3, buzz=5, whizz=7)
    @fizz = fizz
    @buzz = buzz
    @whizz = whizz
  end

  def result(n)
    n = n.to_s

    if n[@fizz.to_s]
      'Fizz'
    end
  end

end
