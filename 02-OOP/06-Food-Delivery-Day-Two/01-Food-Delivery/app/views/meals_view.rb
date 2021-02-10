class MealsView

  def self.display(meals)
    meals.each do |meal|
      puts "#{meal.id} - #{meal.name} (#{meal.price})"
    end
  end

  def self.ask_for(item, type)
    print "Enter a #{item}: "
    eval("\"" + gets.chomp + "\"." + type)
  end

  def self.display_meal(meal)
    puts "Old name: #{meal.name}"
    puts "Old price: #{meal.price}€"
  end

end
