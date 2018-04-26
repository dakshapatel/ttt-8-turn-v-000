
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  end
end

def move(board,index,token)
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.chomp
  any_variable_name = input_to_index(user_input)
  if index.between(0,8) && !valid_move?(board,index)
    return true
else
    counter= 0
    until index.between(0,8) == valid_move?(board,index)
    puts "Please enter 1-9:"
    counter += 1
  end
end
