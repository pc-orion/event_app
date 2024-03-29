class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]
  
    def index
      @events = Event.all
      # render json: @events
    end
  
    def show
      # render json: @event
    end
  
    def new
      @event = Event.new
    end
  
    def create
      @event = Event.new(event_params)
      if @event.save
        redirect_to @event, notice: 'Event was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      render json: @event
    end
  
    def update
      if @event.update(event_params)
        redirect_to @event, notice: 'Event was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @event.destroy
      redirect_to events_url, notice: 'Event was successfully destroyed.'
      head :no_content
    end
  
    private
  
    def set_event
      @event = Event.find(params[:id])
    end
  
    def event_params
      params.require(:event).permit(:name, :description, :date, :image, gallery_images: [])
    end
  end
  