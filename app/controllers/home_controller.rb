class HomeController < ApplicationController

  def index
    @events = Event.all
    if coordinator_signed_in?
      redirect_to dashboard_path
    end
  end

end
