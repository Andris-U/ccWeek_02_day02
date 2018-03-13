
require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < Minitest::Test 

	def setup
		@fish1 = Fish.new 'trout'
		@fish2 = Fish.new 'salmon'

		@river = River.new 'Futaleufú', [@fish1, @fish2]
	end

	def test_fish_count
		assert_equal(2, @river.fish_count)
	end

	def test_a_fish_is_born
		@river.a_fish_is_born('trout')
		assert_equal(3, @river.fish_count)
	end

end