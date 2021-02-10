require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
  end

  def list
    MealsView.display(@meal_repository.all)
  end

  def add
    name = MealsView.ask_for("name", "to_s")
    price = MealsView.ask_for("price", "to_i")
    @meal_repository.create(Meal.new({name: name, price: price}))
  end

  def edit
    list
    id = MealsView.ask_for("id", "to_i")
    meal = @meal_repository.find(id)
    MealsView.display_meal(meal)
    new_name = MealsView.ask_for("new name", "to_s") || meal.name
    new_price = MealsView.ask_for("new price", "to_i") || meal.price
    meal.name, meal.price = new_name, new_price
    @meal_repository.update
  end

  def destroy
    list
    id = MealsView.ask_for("id", "to_i")
    @meal_repository.delete(id)
  end
end
