class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body
end
