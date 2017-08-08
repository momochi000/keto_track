class DailyGoal < ApplicationRecord
  belongs_to :user

  delegate :todays_meals, :to => :user

  def carbs_remaining
    carbs - todays_carbs
  end

  def fat_remaining
    fat - todays_fat
  end

  def protein_remaining
    protein - todays_protein
  end

  private

  def todays_carbs
    todays_meals.map(&:carbs).compact.sum
  end

  def todays_fat
    todays_meals.map(&:fat).compact.sum
  end

  def todays_protein
    todays_meals.map(&:protein).compact.sum
  end
end
