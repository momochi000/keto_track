class AddForeignKeyUidToMeals < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :meals, :users
  end
end
