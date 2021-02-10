class CustomersView

  def self.display(customers)
    customers.each do |customer|
      puts "#{customer.id} - #{customer.name} (#{customer.address})"
    end
  end

  def self.ask_for(item, type)
    print "Enter a #{item}: "
    eval("\"" + gets.chomp + "\"." + type)
  end

  def self.display_customer(customer)
    puts "Old name: #{customer.name}"
    puts "Old address: #{customer.address}"
  end

end
