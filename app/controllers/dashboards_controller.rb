class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @daily_goal = current_user.daily_goal
    @meals = current_user.todays_meals
  end
end
