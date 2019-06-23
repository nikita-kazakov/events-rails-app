class RegistrationsController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @registrations = @event.registrations
  end

  def new
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new(params.
        require(:registration).permit(:name, :email, :how_heard))

    if @registration.save
      redirect_to event_registrations_path(@event),
                  notice: "Thanks, you're registered."
    else
      render :new
    end

  end

end
