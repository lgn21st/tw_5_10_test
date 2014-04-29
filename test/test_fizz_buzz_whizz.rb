$:.unshift File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require "minitest/autorun"
require 'fizz_buzz_whizz'

describe FizzBuzzWhizz do
  let(:fbw) { FizzBuzzWhizz.new }

  it { fbw.must_be_instance_of FizzBuzzWhizz }
end
