# Use either if statements or boolean expressions to control the return value of a method
  # Must move to a position within the tic-tac-toe board
  # The position must be vacant, not currently taken by a player
# use a "helper method" - a method called within another method - to make your code more readable
  # Build a #valid_move? method that accepts a board and an index to check and returns true if the move is valid and false or nil if not.
  # A valid move means that the submitted position is:
    # Present on the game board
    # Not already filled with a token
def user_selection(int)
  num = int - 1
  if num.between?(0,8)
    num
  else
    nil
  end
end


def position_taken?(board, index)
  position = user_selection(index)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
 if position_taken?(board, index) == false
   return true
 else
   false
  end
 end
