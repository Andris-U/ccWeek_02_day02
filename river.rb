
class River
	attr_accessor :name, :fish_in_river

	def initialize name, fish 
		@name = name
		@fish_in_river = fish
	end

	def fish_count
		return @fish_in_river.count 
	end

	def a_fish_is_born type
		@fish_in_river.push(Fish.new(type))
	end

end