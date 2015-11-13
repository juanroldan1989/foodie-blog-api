class ActivityItem < ActiveRecord::Base

  scope :latest, -> (amount) { order("created_at desc").last(amount) }
end
