require_relative "compute_name"

# TODO: ask for the first name
puts 'What\'s your first name?'
first_name = gets.chomp
# TODO: ask for the middle name
puts 'What\'s your middle name?'
middle_name = gets.chomp
# TODO: ask for the last name
puts 'What\'s your last name?'
last_name = gets.chomp


# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

custom_message = "Salut #{compute_name(first_name, middle_name, last_name)}. You got #{compute_name(first_name, middle_name, last_name).size} characters in your full name!"

puts "#{custom_message}"

