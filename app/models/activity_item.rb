class ActivityItem < ActiveRecord::Base

  scope :latest, -> (amount) { order("created_at desc").first(amount) }
end
