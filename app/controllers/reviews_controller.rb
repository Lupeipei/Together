class ReviewsController < ApplicationController
  before_action :check_user
  before_action :authenticate_user!

  def new
    @event = Event.find(params[:event_id])
    @review = Review.new
  end

  def create
    @event = Event.find(params[:event_id])
    @review = Review.new(review_params)
    @review.event = @event
    @review.user = current_user
    @review.save
  end

  def destroy
    @event = Event.find(params[:event_id])
    @review = Review.find(params[:id])
    @review.destroy
    # redirect_to :back, alert: "评论已经删除"
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def check_user
    return if user_signed_in?
    redirect_to new_user_session_path, error: '请先登录'
  end

end
