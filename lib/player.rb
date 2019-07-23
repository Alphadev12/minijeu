class Player
	attr_accessor :name, :life_points

	def initialize(name_player)
		@life_points = 10
		@name = name_player
	end
end