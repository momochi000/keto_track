class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals

  def todays_meals
    meals.where("created_at BETWEEN ? AND ?", Time.current.beginning_of_day, Time.current.end_of_day)
  end
end
