class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def show
        @event = Event.find(params[:id])
    end

    def create
        @event = current_user.event_creations.build(event_params)
        if @event.save
            redirect_to events_path, notice: "Event was successfully created!"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def event_params
        params.require(:event).permit(:title, :date, :description, :location)
    end
end
