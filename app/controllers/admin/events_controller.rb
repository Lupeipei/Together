class Admin::EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin
  layout 'admin'

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      redirect_to admin_events_path, notice: "#{@event.title} created"
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to admin_events_path, notice: "#{@event.title} updated"
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to admin_events_path, alert: "#{@event.title} deleted"
  end

  private

  def event_params
    params.require(:event).permit(:title, :logo, :remove_logo,:status,:description, :start_time, :end_time, :city, :address, :sponsor,:limited_num,:category_id)
  end


end
