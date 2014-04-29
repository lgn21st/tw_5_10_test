$:.unshift File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require "minitest/autorun"
require 'fizz_buzz_whizz'

describe FizzBuzzWhizz do
  let(:fbw) { FizzBuzzWhizz.new }

  it { fbw.must_be_instance_of FizzBuzzWhizz }

  describe "init with default factor number" do
    it { fbw.fizz.must_equal 3 }
    it { fbw.buzz.must_equal 5 }
    it { fbw.whizz.must_equal 7 }
  end

  describe "doesn't apply any rule" do
    it { fbw.result(1).must_equal 1 }
    it { fbw.result(2).must_equal 2 }
    it { fbw.result(4).must_equal 4 }
    it { fbw.result(8).must_equal 8 }
  end

  describe "apply rule #5" do
    it { fbw.result(13).must_equal 'Fizz' }
    it { fbw.result(35).must_equal 'Fizz' }
  end

  describe "apply rule #3" do
    it { fbw.result(3).must_equal 'Fizz' }
    it { fbw.result(6).must_equal 'Fizz' }
    it { fbw.result(9).must_equal 'Fizz' }

    it { fbw.result(5).must_equal 'Buzz' }
    it { fbw.result(10).must_equal 'Buzz' }

    it { fbw.result(7).must_equal 'Whizz' }
    it { fbw.result(14).must_equal 'Whizz' }
  end

  describe "apply rule #4" do
    it { fbw.result(15).must_equal 'FizzBuzz' }
    it { fbw.result(21).must_equal 'FizzWhizz' }
    it { fbw.result(70).must_equal 'BuzzWhizz' }
  end

end
