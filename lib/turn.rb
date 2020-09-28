<<<<<<< HEAD
require "pry"

def greeting(input)
puts "Please enter 1-9:"
return input
=======
def display_board (board)
  puts "#{board[0]} | #{board[1]} | #{board[2]}"
  puts " -----------"
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts " -----------"
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
>>>>>>> 713aff909544e73e4bc9156258e27b4644e81a4f
end

def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

<<<<<<< HEAD
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def position_available?(board, index)
  #binding.pry
  if board[index] == "X" || board[index] ==  "O"
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
  #if valid_move?(board, index)
    board[index] = character
#  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
 end
  #binding.pry
  move(board, index, character = "X")
  display_board(board)
=======
def position_taken?(board, index)
  taken = board[index] == "X" || "O"
return taken
end

def valid_range?(board, index)
  good_range = board[index] >= 0 && board[index] <= 8
return good_range
end

def valid_move(board, index)
if board[index] = !position_taken && valid_range?(board, index)
  return valid
else
  return !valid
end
end

def move(board, index, character = "X")
  if valid_move(board, index)
    board[index] = character
  end
end

def turn(board, index)
>>>>>>> 713aff909544e73e4bc9156258e27b4644e81a4f
end
