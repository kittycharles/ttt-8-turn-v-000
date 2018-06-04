def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if board[index] == " " && index == [0, 1, 2, 3, 4, 5, 6, 7, 8]
    true
  elsif position_taken?(board, index) == true
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end
