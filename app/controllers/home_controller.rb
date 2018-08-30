class HomeController < ApplicationController

  def index
    @events = Event.all.order(created_at: :desc)
    if coordinator_signed_in?
      redirect_to dashboard_path
    end
  end

  def not_found
   # For Wildcard Route
  end

end
