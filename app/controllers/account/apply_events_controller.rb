class Account::ApplyEventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = current_user.applied_events.by_paged(params[:page])
  end
end
