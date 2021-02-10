require 'io/console'

class SessionsView

  def self.ask_for(item, type)
    print "Enter a #{item}: "
    eval("\"" + gets.chomp + "\"." + type)
  end

  def self.ask_for_password
    print "Enter your password: "
    STDIN.noecho(&:gets).chomp
  end

  def authen_error
    puts "Authentification error!"
  end

end
