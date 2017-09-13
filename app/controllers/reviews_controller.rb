class ReviewsController < ApplicationController
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
    if @review.save
      redirect_to event_path(@event), notice: "评论成功"
    else
      redirect_to event_path(@event), alert: "不能为空"
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back, alert: "评论已经删除"
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
