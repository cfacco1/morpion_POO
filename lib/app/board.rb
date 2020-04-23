require_relative 'board_case'

class Board
  attr_accessor :array_board

#Intialisation de ma table de jeu
  def initialize
    @A1 = BoardCase.new("A1",'.')
    @A2 = BoardCase.new("A2",'.')
    @A3 = BoardCase.new("A3",'.')
    @B1 = BoardCase.new("B1",'.')
    @B2 = BoardCase.new("B2",'.')
    @B3 = BoardCase.new("B3",'.')
    @C1 = BoardCase.new("C1",'.')
    @C2 = BoardCase.new("C2",'.')
    @C3 = BoardCase.new("C3",'.')
    @array_board = [@A1,@A2,@A3,@B1,@B2,@B3,@C1,@C2,@C3]
  end

    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe

  def play_turn(board, current_player)
    
      puts "#{current_player.player_name}, pour rappel, ton jeton est le '#{current_player.player_token}', quel est ton move ? "
      case_play = gets.chomp

      case case_play
      when "A1"
              board.array_board[0].token  = current_player.player_token
      when "A2"
              board.array_board[1].token  = current_player.player_token
      when "A3"
              board.array_board[2].token  = current_player.player_token
      when "B1"
              board.array_board[3].token  = current_player.player_token
      when "B2"
              board.array_board[4].token  = current_player.player_token
      when "B3"
              board.array_board[5].token  = current_player.player_token
      when "C1"
              board.array_board[6].token  = current_player.player_token
      when "C2"
              board.array_board[7].token  = current_player.player_token
      when "C3"
              board.array_board[8].token  = current_player.player_token
      end

    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    #Note pour moi même, on peut remplacer la case jouée
  end

  def victory? (board)

  # Horizontal
    if board.array_board[0].token == 'X' && board.array_board[1].token == 'X' && board.array_board[2].token == 'X'
      return true
    end
    if board.array_board[0].token == 'O' && board.array_board[1].token == 'O' && board.array_board[2].token == 'O'
      return true
    end
    if board.array_board[3].token == 'X' && board.array_board[4].token == 'X' && board.array_board[5].token == 'X'
      return true
    end
    if board.array_board[3].token == 'O' && board.array_board[4].token == 'O' && board.array_board[5].token == 'O'
      return true
    end
    if board.array_board[6].token == 'X' && board.array_board[7].token == 'X' && board.array_board[8].token == 'X'
      return true
    end
    if board.array_board[6].token == 'O' && board.array_board[7].token == 'O' && board.array_board[8].token == 'O'
      return true
    end

    # Vertical
    if board.array_board[0].token == 'X' && board.array_board[3].token == 'X' && board.array_board[6].token == 'X'
      return true
    end
    if board.array_board[0].token == 'O' && board.array_board[3].token == 'O' && board.array_board[6].token == 'O'
      return true
    end
    if board.array_board[1].token == 'X' && board.array_board[4].token == 'X' && board.array_board[7].token == 'X'
      return true
    end
    if board.array_board[1].token == 'O' && board.array_board[4].token == 'O' && board.array_board[7].token == 'O'
      return true
    end
    if board.array_board[2].token == 'X' && board.array_board[5].token == 'X' && board.array_board[8].token == 'X'
      return true
    end
    if board.array_board[2].token == 'O' && board.array_board[5].token == 'O' && board.array_board[8].token == 'O'
      return true
    end
  end
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
end