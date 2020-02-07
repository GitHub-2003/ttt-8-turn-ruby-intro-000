def turn(board)
  index = 0
  until index > 0 and index < 10
    puts "Please enter 1-9:"
  end
  return index
end

# Should accept a board as an argument and
# print out the current state of the board for the use
def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("------------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("------------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
  puts("Enter TTC position (1 to 9):  ")
  user_input = gets.strip
  return user_input.to_i
end

# Should accept a board and an index from the user and return true
# if the index is within the correct range of 0-8 and
# is currently unoccupied by an X or O token.
def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  else
    return (board[index] == " ")
  end
end

# should accept a board, an index from the user
# (which was converted from their raw input with `input_to_index`),
# and a token to mark that position with
# (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet).
# should set the correct index value of that position within the board equal to the token.
def move(board, index, token)
  board[index] = token
end
