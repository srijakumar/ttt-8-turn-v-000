require 'pry'
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def turn(board)
   puts "Please enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    puts "position #{index + 1}"
    display_board(board)
  else
    until valid_move?(board, index)
      puts "Invalid Move, Please Choose Again (Must Be A Number 1-9)"
      index = input_to_index(gets.strip)
    end
  end
end

def input_to_index(input)
    index = input.to_i - 1
end

#def turn(board)
#  puts "Please enter 1-9:"

#  index = input_to_index(gets.strip)
#end



def move (board, index, value = "X")
  #binding.pry
  board[index] = value
end


# code your #valid_move? method here
def valid_move? (board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    return true
  else return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else return true
  end
end









# displays board current state [X]
#def display_board(board)
#  puts " #{board[0]} | #{board[1]} | #{board[2]} "
#  puts "-----------"
#  puts " #{board[3]} | #{board[4]} | #{board[5]} "
#  puts "-----------"
#  puts " #{board[6]} | #{board[7]} | #{board[8]} "
#end

# Asks user for input
# 1] if move is valid, make move
# 2] if move is NOT valid ask for input until move is valid
#def turn(board)
#  puts "Please enter 1-9:"
#  index = input_to_index(gets.strip)
#  if valid_move?(board, index)
#    move(board, index, char = "X")
#    puts "You chose position #{index + 1}"
#  else
#    until valid_move?(board, index)
#      puts "Invalid Move, Please Choose Again (Must Be A Number 1-9)"
#      index = input_to_index(gets.strip)
#    end
#  end
#end

# Ensures user does not input an empty string [X]
#def check_input?(board, index)
#  if board[index] == "" || board[index] == " "
#    return false
#  else
#    return true
#  end
#end

# ensure move is valid
# 1] index is empty (check_input) [X]
# 2] index between 0-8 [X]
#def valid_move?(board, index)
#  !check_input?(board, index) && index.between?(0, 8)
#end

# if move valid convert input to integer [X]
#def input_to_index(index)
#  index = index.to_i - 1
#end

# Makes move (adds to index by reassign) [X]
#def move(board, index, char = "X")
#  board[index] = "#{char}"
#end
