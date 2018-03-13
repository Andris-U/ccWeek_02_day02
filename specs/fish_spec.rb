require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < Minitest::Test 

	def setup
		@fish1 = Fish.new 'trout'
		@fish2 = Fish.new 'salmon'
	end

	def test_get_type
		assert_equal 'trout', @fish1.type 
	end

end