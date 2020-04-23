require_relative 'board'
require 'views/show'
require_relative 'player'

class Game
  attr_accessor :current_player, :status, :board, :array_player
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player_1 = Player.new
    @player_2 = Player.new
    @array_player = [@player_1,@player_2]
    @status = 'on going'
    
    @player_1.show_state
    @player_2.show_state
    @board = Board.new
    Show.new.show_board(@board)
  end


  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
    #Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la 
    #partie n'est pas finie.
   i=0
      while @status == 'on going' && i<9
        @current_player = @array_player[i%2]
        @board.play_turn(@board, @current_player)
        
        Show.new.show_board(@board)
        if @board.victory?(@board)
          @status = 'winner'
          break
        end
        i+=1
      end
  end

    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  #end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    if @status == 'winner'
      puts "Bravo #{@current_player.player_name}, t'es le plus fort des confinés"
    end
  end        
end