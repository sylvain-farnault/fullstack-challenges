require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  # If the player’s score is > 21, they "Lose" (bust).
  if player_score > 21
    return "lose"
  # If the player’s score is 21, they pull a "Black Jack" and win.
  elsif player_score == 21
    return "black jack"
  # If the player’s score is > than the bank’s, they "Win".
  elsif player_score > bank_score
    return "win"
  # If the player’s score is < than the bank’s, they "Lose".
  elsif player_score < bank_score
    return "lose"
  # If the player’s score is == to the bank’s, it’s a "Push". The player gets their money back.
  elsif player_score == bank_score
    return "push"
  end
end
