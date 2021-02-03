#
# NOT FINISHED
#

# TODO: you can build your horse race program here!

# interface.rb

horses = ["Petit Tonnerre", "Black l'étalon noir", "Tornado", "Jolly Jumper", "Le cheval de Troie"]
user_balance = 100
play = true

# Pseudo-code:
# 1. Print welcome and the horses names
puts "--- Welcome ---"
puts "Horses running today:"
horses.each_with_index do |horse, index|
  puts "#{index + 1} - #{horse}"
end


while play

  # 2. Get user's boet
  print "Choose your winner: "
  user_bet = gets.chomp.to_i

  # 3. Run the race 🐴
  15.times do
    sleep(0.15)
    print "."
  end
  puts ""
  puts "The winner is #{winner = horses.sample}."
  # 4. Print results
  puts horses[user_bet - 1] == winner ? "Your win" : "Looser"

end


