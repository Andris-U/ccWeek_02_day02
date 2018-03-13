
class Bear
	attr_accessor :name, :stomach

	def initialize name, stomach
		@name = name
		@stomach = stomach
	end

	def hunt_for_fish river
		if river.fish_in_river != []
			@stomach << river.fish_in_river.pop
		end
		return nil
	end

	def is_starving?
		@stomach.empty? ? true : false
	end

	def digest
		@stomach.clear
	end

	def hunt_for_many_fish river, amount
		if river.fish_in_river.count >= amount
			amount.times { @stomach << river.fish_in_river.pop }
		end
		return nil
	end

end