require "minitest/autorun"
require_relative "randompairs_infile.rb"

class TestRandomPairsInFile < Minitest::Test
	
	def test_1_returns_1
		assert_equal(1,1)
	end

	def test_array_created
		results = randomizepairs()
		assert_equal(11,results.length)
	end

end	