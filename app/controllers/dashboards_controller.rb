class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @meals = current_user.todays_meals
  end
end
