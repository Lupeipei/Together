class Account::FavoritesController < ApplicationController

  def index
    @events = current_user.favorite_events
  end
end
