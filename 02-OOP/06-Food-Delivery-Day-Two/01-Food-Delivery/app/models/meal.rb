class Meal
  # attr_reader :name, :price
  attr_accessor :id, :name, :price

  def initialize(params)
    @id = params[:id]
    @name = params[:name]
    @price = params[:price]
  end
end
