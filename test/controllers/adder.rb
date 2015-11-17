require 'minitest/autorun'

class Adder
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    @num1 + @num2
  end
end

class TestAdder < Minitest::Test
	def test_adder
		adder = Adder.new(10,15)
		assert_equal 25, adder.add
	end
end
