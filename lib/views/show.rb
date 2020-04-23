class Show
	attr_accessor :board

	def initialize
	end

  def show_board(board)
    puts " " * 4 + "1" + " " * 3 + "2" + " " * 3 + "3" 
    puts "-" * 15
    puts "A | " + board.array_board[0].token + " | " + board.array_board[1].token + " | " + board.array_board[2].token + " |"
    puts "-" * 15
    puts "B | " + board.array_board[3].token + " | " + board.array_board[4].token + " | " + board.array_board[5].token + " |"
    puts "-" * 15
    puts "C | " + board.array_board[6].token + " | " + board.array_board[7].token + " | " + board.array_board[8].token + " |"
    puts "-" * 15
  end
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
end
