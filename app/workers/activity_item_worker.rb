class ActivityItemWorker
  include Sidekiq::Worker
  sidekiq_options queue: "activity_items"

  attr_reader :action_type
  attr_reader :resource_id
  attr_reader :resource_type
  attr_reader :resource_title
  attr_reader :user_id

  def initialize(action_type, resource_id, resource_type, resource_title, user_id)
    @action_type    = action_type
    @resource_id    = resource_id
    @resource_type  = resource_type
    @resource_title = resource_title
    @user_id        = user_id
  end

  def perform
    create_activity_item_service.call
  end

  private

  def create_activity_item_service
    ActivityItems::Create.new(action_type, resource_id, resource_type, resource_title, user_id)
  end
end
