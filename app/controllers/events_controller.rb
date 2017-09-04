class EventsController < ApplicationController

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
    if @event.save
      redirect_to events_path
    else
      render :new
    end
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

end
