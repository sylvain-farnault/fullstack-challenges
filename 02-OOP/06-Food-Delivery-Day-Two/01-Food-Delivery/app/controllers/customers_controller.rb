require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
  end

  def list
    CustomersView.display(@customer_repository.all)
  end

  def add
    name = CustomersView.ask_for("name", "to_s")
    address = CustomersView.ask_for("address", "to_s")
    @customer_repository.create(Customer.new({name: name, address: address}))
  end

  def edit
    list
    id = CustomersView.ask_for("customer id", "to_i")
    customer = @customer_repository.find(id)
    CustomersView.display_customer(customer)
    new_name = CustomersView.ask_for("new name", "to_s") || customer.name
    new_address = CustomersView.ask_for("new address", "to_s") || customer.address
    customer.name, customer.address = new_name, new_address
    @customer_repository.update
  end

  def destroy
    list
    id = CustomersView.ask_for("id", "to_i")
    @customer_repository.delete(id)
  end
end
