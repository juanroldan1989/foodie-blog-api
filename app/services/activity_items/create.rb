module ActivityItems
  class Create

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

    def call
      ActivityItem.create(resource_params)
    end

    private

    def resource_params
      {
        user_id:        user_id,
        action_type:    action_type,
        resource_id:    resource_id,
        resource_type:  resource_type,
        resource_title: resource_title
      }
    end
  end
end
