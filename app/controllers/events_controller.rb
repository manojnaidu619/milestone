class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
     if @event.save
       redirect_to dashboard_path
       flash.now[:alert] = 'Event saved!'
     else
       render 'new'
     end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to dashboard_path
  end
  private

   def event_params
     params.require(:event).permit(:title, :description)
   end
end
