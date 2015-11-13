class ActivityItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :action_type, :resource_type, :resource_id, :resource_title
end
