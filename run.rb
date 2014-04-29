require './lib/fizz_buzz_whizz'

fbw = FizzBuzzWhizz.new(3, 5, 7)

1.upto(100) do |i|
  puts fbw.result(i)
end
