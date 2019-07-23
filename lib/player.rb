class Player
	attr_accessor :name, :life_points

	def initialize(name_player)
		@life_points = 10
		@name = name_player
	end

	def show_state
		puts "#{name} a #{life_points} points de vie"
	end

	def gets_damage(damage)
		@life_points = life_points - (damage.to_i)

		if @life_points <= 0
			puts "Le joueur #{self.name} a été tué !"
		end
	end

	def attacks(player)
		puts "#{self.name} attaque #{player.name}"
		attack_sudden = compute_damage

		puts "Il lui inflige #{attack_sudden} points de dammages"

		player.gets_damage(attack_sudden)
	end

	def compute_damage
		return rand(1..6)
	end
end