require 'csv'
require_relative '../models/meal'

class MealRepository

  def initialize(csv_path)
    @csv_path = csv_path
    @meals = []
    @next_id = 1
    load_csv if File.file?(@csv_path)
  end

  def create(meal)
    @meals << meal
    meal.id = @next_id
    @next_id += 1
    save_csv
  end

  def all
    @meals
  end

  def find(id)
    @meals.find { |meal| meal.id == id }
  end

  def update
    save_csv
  end

  def delete(id)
    @meals.reject! { |meal| meal.id == id }
    save_csv
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
    @next_id = @meals.last.id + 1 unless @meals.empty?
  end

  def save_csv
    CSV.open(@csv_path, 'wb') do |csv|
      csv << ['id', 'name', 'price']
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end
