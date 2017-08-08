class DailyGoalsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_daily_goal, :only => [:edit, :update]

  def new
    @daily_goal = DailyGoal.new(:user => current_user)
  end
  
  def edit
    unless(@daily_goal.present?)
      # set flash
      return redirect_to new_daily_goal_path
    end
    @daily_goal = current_user.daily_goal
  end

  def create
    @daily_goal = DailyGoal.new({:user => current_user}.merge(daily_goal_params))
    if(@daily_goal.save)
      # set flash
      return redirect_to dashboard_path
    else
      # set flash
      return redirect_to new_daily_goal_path
    end
  end

  def update
    @daily_goal.update_attributes(daily_goal_params)
    if(@daily_goal.errors.any?)
      # set flash
      redirect_to edit_daily_goal_path
    else
      # set flash
      redirect_to dashboard_path
    end
  end

  private

  def daily_goal_params
    params.require(:daily_goal).permit(:fat, :carbs, :protein)
  end

  def load_daily_goal
    @daily_goal = current_user.daily_goal
  end
end
