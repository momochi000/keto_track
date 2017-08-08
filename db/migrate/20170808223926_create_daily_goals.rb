class CreateDailyGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_goals do |t|

      t.references :user
      t.decimal :fat, :precision => 5, :scale => 2
      t.decimal :carbs, :precision => 5, :scale => 2
      t.decimal :protein, :precision => 5, :scale => 2

      t.timestamps
    end
  end
end
