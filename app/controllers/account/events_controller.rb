class Account::EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = current_user.events
  end
end
