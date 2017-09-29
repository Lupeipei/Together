class Account::EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = current_user.events.by_paged(params[:page])
  end
end
