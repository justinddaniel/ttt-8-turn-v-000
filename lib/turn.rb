board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def input_to_index(input)
  index = input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (!position_taken?(board, index) && index.between?(0, 8))
    true
  end
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def move(board, index, token = "X")
  if (valid_move?(board, index))
    board[index] = token
end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  return if (!input.between(1, 9))
  move(board, index, token = "X")
end
