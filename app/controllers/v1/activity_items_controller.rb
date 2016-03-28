module V1
  class ActivityItemsController < ApplicationController

    # GET /activy_items
    # GET /activy_items.json
    def index
      @activity_items = ActivityItem.latest(20)

      render json: { activity_items: @activity_items }
    end

  end
end
