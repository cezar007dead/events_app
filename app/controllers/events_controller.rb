class EventsController < ApplicationController
    def index
        @events = Event.all
    end
    def new
        @event = Event.new
    end
    def create
        Event.create(event_params.merge(user: current_user))
        redirect_to events_path
    end
    def destroy
        Event.delete(params[:id])
        redirect_to events_path
    end
    private
    def event_params
        params.require(:event).permit(:title, :description, :adress)
    end
end