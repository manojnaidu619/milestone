class CoordinatorsController < ApplicationController
  def dashboard
    flash[:success] = "Welcome to the dashboard!!"
    @current_coordinator = Coordinator.find(current_coordinator.id)    # First finds the current logged in coordinator
  end
end
