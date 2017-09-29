class Account::FavoritesController < ApplicationController

  def index
    @events = current_user.favorite_events.by_paged(params[:page])
  end
end
