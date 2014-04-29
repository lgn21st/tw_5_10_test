$:.unshift File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require "minitest/autorun"
require 'fizz_buzz_whizz'

describe FizzBuzzWhizz do
  let(:fbw) { FizzBuzzWhizz.new }

  it { fbw.must_be_instance_of FizzBuzzWhizz }

  describe "init with default factor number" do
    let(:fbw) { FizzBuzzWhizz.new }

    it { fbw.fizz.must_equal 3 }
    it { fbw.buzz.must_equal 5 }
    it { fbw.whizz.must_equal 7 }
  end

end
