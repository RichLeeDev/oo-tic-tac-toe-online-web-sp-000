class TicTacToe
  attr_accessor :board
  
  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
  
<<<<<<< HEAD
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  
=======
  def initialize
    @board = Array.new(9, " ")
  end
  
>>>>>>> 25a66ae09dfb9feafacb6a4274875c61db8b6e6f
  def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  def input_to_index(user_input)
    input = user_input.to_i - 1
  end
  
  def move(index, current_player = "X")
    @board[index] = current_player
  end
  
  def position_taken?(index)
    @board[index] != " " && @board[index] != ""
  end 
  
  def valid_move?(index)
    if index.between?(0,8) && position_taken?(index) == false
      return true
      else
        return false
    end
  end
  
  def turn 
     puts 'Please enter 1-9:'
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(index)
    move(index, current_player)
    display_board
  else
    turn
  end
  end
  
  def turn_count
    counter = 0
    @board.each do |index|
      if index == "X" || index == "O"
        counter += 1
      end
  
    end
    return counter
  end
  
  def current_player
    if turn_count % 2 == 0 
      return "X"
    else
      return "O"
    end
  end
  
  def won?
    WIN_COMBINATIONS.each {|win_combo|
    index_0 = win_combo[0]
    index_1 = win_combo[1]
    index_2 = win_combo[2]

    position_1 = @board[index_0]
    position_2 = @board[index_1]
    position_3 = @board[index_2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  }
  return false
  end
  
  def full?
    @board.all? {|index| index == "X" || index == "O"}
  end 
  
  def draw?
    if full? && !won?
      return true 
    else
      return false
    end 
  end
  
  def over?
<<<<<<< HEAD
    if won? || full? || draw?
=======
    if won? || full?
>>>>>>> 25a66ae09dfb9feafacb6a4274875c61db8b6e6f
      return true
    else
      return false
    end
  end
  
  def winner
    index = []
  index = won?
  if index == false
    return nil
  else
    if @board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
  end
  
  def play 
<<<<<<< HEAD
    while over? == false
    turn
  end
  if won?
    puts "Congratulations #{winner}!"
  elsif draw?
    puts "Cat's Game!"
=======
    until won? == true || won? != false
    turn
  end
  if winner
    puts "Congratulations!"
  elsif draw?
    puts "Draw!"
  else
    return nil
>>>>>>> 25a66ae09dfb9feafacb6a4274875c61db8b6e6f
  end
  end 
end 