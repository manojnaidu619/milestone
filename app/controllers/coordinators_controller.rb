class CoordinatorsController < ApplicationController
  def dashboard
    @current_coordinator = Coordinator.find(current_coordinator.id)    # First finds the current logged in coordinator
    @events = Event.all          # Display any events hosted by the coordinator of the club
  end
end
