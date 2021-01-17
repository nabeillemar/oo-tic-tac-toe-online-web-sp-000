class TicTacToe

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  

 
  WIN_COMBINATIONS = [

    [0,1,2], # Top row
    [3,4,5],  # Middle row
    [6,7,8],  # Bottom row
    [0,3,6],  # Left col
    [1,4,7],  # Middle col
    [2,5,8],  # Right col
    [0,4,8],  # Diagnol 1
    [2,4,6]  # Diagnol 2
  ]


  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  

  def input_to_index(input)
    input.to_i - 1
  end
  

  def move(index, token = "X")
    @board[index] = token
  end
  

  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end


  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end


def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    char = current_player
    if valid_move?(index)
      move(index, char)
      display_board
    else
      turn
    end
end


  def current_player
     board.turn_count.odd? ? player_2 : player_1
  end
  
  
def play
  while over? == false
    turn
  end
  if won?
    puts "Congratulations #{winner}!"
  elsif draw?
    puts "Cat's Game!"
  end
end

end
  




