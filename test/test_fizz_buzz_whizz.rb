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

  describe "apply rule #5" do
    it { fbw.result(13).must_equal 'Fizz' }
  end

end
