class AddFieldsToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :carbs,   :decimal, :precision => 5, :scale => 2 
    add_column :meals, :fat,     :decimal, :precision => 5, :scale => 2 
    add_column :meals, :protein, :decimal, :precision => 5, :scale => 2 
    add_column :meals, :name, :string
  end
end
