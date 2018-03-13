require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class BearTest < Minitest::Test 

	def setup
		@fish1 = Fish.new 'trout'
		@fish2 = Fish.new 'salmon'

		@river = River.new 'Futaleufú', [@fish1, @fish2]

		@bear = Bear.new 'Baloo', []
	end

	def test_hunt_for_fish
		@bear.hunt_for_fish(@river)
		refute_empty(@bear.stomach)
		assert_equal(1, @river.fish_in_river.count)
	end

	def test_is_starving__true
		assert_equal(true, @bear.is_starving?)
	end

	def test_is_starving__false
		@bear.hunt_for_fish(@river)
		assert_equal(false, @bear.is_starving?)
	end

	def test_digest
		@bear.hunt_for_fish(@river)
		@bear.digest
		assert_equal(0, @bear.stomach.count)
	end

	def test_hunt_for_many_fish
		@bear.hunt_for_many_fish(@river, 2)
		assert_equal(2, @bear.stomach.count)
		assert_equal(0, @river.fish_in_river.count)
	end


end















