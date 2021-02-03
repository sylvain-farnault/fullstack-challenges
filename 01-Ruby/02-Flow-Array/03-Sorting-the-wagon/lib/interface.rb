require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.5.3/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.5.3/String.html#method-i-chomp

students = []

user_input = nil

while user_input != ""
  print "New student name: "
  user_input = gets.chomp
  students << user_input unless user_input.empty?
  students = wagon_sort(students)
end

puts "Congratulations: your Wagon has #{students.count} student#{students.size >1 ? 's' : ''}"

if students.size >= 2
  puts "#{students[0..-2].join(', ')} and #{students.last}"
else
  puts students.first
end

# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
