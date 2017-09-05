class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:favrite]

  def index
    @events = Event.all.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end


  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def favorite
    @event = Event.find(params[:id])
    type = params[:type]
    if type == "favorite"
      current_user.favorite!(@event)
    else type == "unfavorite"
      current_user.unfavorite!(@event)
    end
    redirect_to :back
  end


  def search
    if @query_string.present?
      search_result = Event.ransack(@search_criteria).result(:distinct => true)
      @jobs = search_result.paginate(:page => params[:page], :per_page => 10)
    end
  end

  private

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end

  def search_criteria(query_string)
    {:title_or_description_cont => query_string}
  end

  # def event_params
  #   params.require(:event).permit(:title, :logo, :remove_logo,:status,:description, :start_time, :end_time, :address, :sponsor, :category_id)
  # end

end
