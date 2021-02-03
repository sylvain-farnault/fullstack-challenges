require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card


bank_score = pick_bank_score
play = true
player_score = 0

while play
  puts "Card? 'y' or 'yes' to get a new card"
  play = ["y", "yes"].include?(gets.chomp)
  player_score += pick_player_card() if play
  puts state_of_the_game(player_score, bank_score) if play
  play = false if player_score >= 21
end

puts "Result: #{end_game_message(player_score, bank_score)}"

puts "The end"
