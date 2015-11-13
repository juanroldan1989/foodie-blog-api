class ActivityItemsController < ApplicationController

  # GET /activy_items
  # GET /activy_items.json
  def index
    @activity_items = ActivityItem.all

    render json: @activy_items
  end

end
