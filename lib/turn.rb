require "pry"
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

def position_available?(board, index)
  binding.pry
  if board[index] == "X" || "O"
    available = false
  else
    available = true
  end
    return available
end

def valid_range?(index)
   #binding.pry
  good_range = index >= 0 && index < 9
return good_range
end

def valid_move?(board, index)
  #binding.pry
valid = (position_available?(board, index) && valid_range?(index))
end

def move(board, index, character = "X")
  if valid_move?(board, index)
    board[index] = character
  end
end

def turn(index)
end
