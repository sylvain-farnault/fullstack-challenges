require_relative "calculator"

# TODO: you can build your calculator program here!
continue = true
puts "--- WELCOME ---"

while continue
  print "enter a number: "
  number1 =  gets.chomp.to_f

  print "enter a number: "
  number2 =  gets.chomp.to_f

  print "Choose operator: + - * /: "
  operator = gets.chomp

  puts "#{number1} #{operator} #{number2} = #{number1.method(operator).(number2)}"

  print "Again? (Y or N): "
  continue = ["yes", "y", "Y"].include?(gets.chomp)
end
