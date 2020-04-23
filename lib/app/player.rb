#Deux attributs: le nom et le jeton

class Player
	attr_reader :player_name, :player_token

#Initialisation pour avoir les deux informations
  
  	def initialize
  		@player_name = gets_name
  		@player_token = gets_token
 	end 

#Choix du nom et de la valeur

	def gets_name
		puts "Quel est ton blaze?"
		name = gets.chomp
	end

	def gets_token
		puts "Avec quel jeton veux-tu combattre? (X ou O)"
		token = gets.chomp
		return token
	end

#Méthode pour les points de vie
	def show_state
    	puts "#{@player_name} a choisi #{@player_token} comme jeton"
  	end 

end