class Customer
  # attr_reader :name, :address
  attr_accessor :id, :name, :address

  def initialize(params)
    @id = params[:id]
    @name = params[:name]
    @address = params[:address]
  end
end
