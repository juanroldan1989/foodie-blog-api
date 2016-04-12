module V1
  class ActivityItemsController < ApplicationController

    def index
      @activity_items = ActivityItem.latest(20)

      render json: { activity_items: @activity_items }
    end

  end
end
