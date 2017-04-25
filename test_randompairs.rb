require "minitest/autorun"

require_relative "randompairs.rb"

class TestRandomPairs < Minitest::Test

	def test_1_returns_1

		assert_equal(1,1)

	end

	def test_number_of_sets_in_final_pairs_array

		results = random_pairs()

		assert_equal(10,results.count)

	end

end	