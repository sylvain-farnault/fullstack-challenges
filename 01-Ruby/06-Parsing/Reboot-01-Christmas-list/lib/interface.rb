require 'nokogiri'
require 'open-uri'
# TODO: you can build your christmas list program here!


# interface.rb
action = nil
FILEPATH = "/home/sylvinho/code/batch558/fullstack-challenges/01-Ruby/06-Parsing/Reboot-01-Christmas-list/results.html"


GIFT_LIST = []
# {name: "example", done: true||false}

# Pseudo-code:
# 1. Welcome

puts "--- Christmas is Coming!! ---"
# 2. Display menu (list / add / delete / mark )

def display_actions
  puts "1 - List"
  puts "2 - Add"
  puts "3 - Delete"
  puts "4 - Mark"
  puts "5 - Idea"
  puts "9 - Exit"
  # 3. Get user action
  action = gets.chomp.to_i
  do_action(action)
end
# 4. Perform the right action

def list
  puts "-------------- action list"
  GIFT_LIST.each_with_index do |item, index|
    puts "#{index + 1} - [#{item[:done] ? "X" : " "}] #{item[:name]}"
  end
end

def add
  puts "-------------- action add"
  print "Title: "
  GIFT_LIST << {name: gets.chomp, done: false}
end

def delete
  puts "-------------- action delete"
  print "Which item did you have to delete: "
  choice = gets.chomp.to_i
  GIFT_LIST.delete_at(choice - 1)
end

def mark
  puts "-------------- action mark"
  print "Which item did you bought: "
  choice = gets.chomp.to_i
  GIFT_LIST[choice - 1][:done] = !GIFT_LIST[choice - 1][:done]
end

def idea
  puts "-------------- Action Idea"
  print "What are you searching on Etsy?: "
  article = gets.chomp
  html_content = open("https://www.etsy.com/search?q=#{article}").read
  doc = Nokogiri::HTML(html_content)
  results = [*doc.search('h3.text-gray').first(5)]
  p results
  exit
  doc.search('h3.text-gray').first(5).each_with_index do |element, index|
  # 4. For each item found, we extract its title and print it
    puts "#{index + 1} - #{element.text.strip[0..40]}..."
  end
  print "Choose item to add: "
  GIFT_LIST << {name: "", done: false}

end

def do_action(action)
  case action
    when 1
      list
    when 2
      add
    when 3
      delete
    when 4
      mark
    when 5
      idea
    when 9
      exit
    else
      puts "Choose 1, 2, 3 or 4"
  end
end


while action != 9
  display_actions
end
