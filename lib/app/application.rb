require_relative 'game'

class Application
  attr_accessor :player_1, :player_2, :game 

  @@game_counter=0

  def initialize
    @game = Game.new
    while @game.status == 'on going'
      @game.turn
      @game.game_end
    end
  end
end

#Boucle Initialize avec while pour faire tourner le jeu. Tant que la partie est en cours, le joueur suivant joue et on vérifie si les conditions de la victoire ne sont pas remplies