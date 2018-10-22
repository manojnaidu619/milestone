class EventsController < ApplicationController
  before_action :authenticate_coordinator!, except: [:show]

  def new
    @event = Event.new
  end

  def create
    @event = current_coordinator.events.build(event_params)
     if @event.save
       redirect_to dashboard_path
       flash[:notice] = 'Event saved!'
     else
       render 'new'
     end
  end

  def edit
    @event = Event.friendly.find(params[:id])         # As per friendly_id slug
  end

  def update
    @event = Event.friendly.find(params[:id])         # As per friendly_id slug
     if @event.update(event_params)
       redirect_to event_path(@event)
       flash[:success] = "Event Edit successfull!!"
     else
       render 'edit'
     end
  end

  def show
    @event = Event.friendly.find(params[:id])         # As per friendly_id slug
    if request.path != event_path(@event)
      return redirect_to @event, :status => :moved_permanently
    end
  end

  def destroy
    @event = Event.friendly.find(params[:id])         # As per friendly_id slug
    @event.destroy
    @event.image.purge
    redirect_to dashboard_path
  end
  private

   def event_params
     params.require(:event).permit(:title, :description, image: [])
   end

end
