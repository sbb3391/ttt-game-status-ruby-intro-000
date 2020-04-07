require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.select do |winner_set|
    if position_taken?(board, winner_set[0]) &&
       board[winner_set[0]] == board[winner_set[1]] &&
       board[winner_set[0]] == board[winner_set[2]]
        winner_set
     else
       false
    end
  end
end

def full?(board)
  board.none? do |board_taken|
    if board_taken == " "
      true
    else
      false
    end
  end
end

def draw?(board)
  puts won?(board)
  puts full?(board)
  if !(won?(board)) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if !(won?(board)) || draw?(board)
    true
  else
    false
  end
end

def won_test(board)
  WIN_COMBINATIONS.each do |winner_set|
    if board[winner_set[0]] == board[winner_set[1]]
    end
  end
end
