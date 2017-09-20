module EventsHelper

  def event_filters(options)
    params.permit(:category_id)
  end
end
