require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
coach_answer = "mmmmmmmmmmm"

while coach_answer != "" do
  print ">"
  your_move = gets.chomp
  coach_answer = coach_answer(your_move)
  puts "Coach > #{coach_answer}" if coach_answer != ""
end
