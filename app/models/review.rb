class Review < ActiveRecord::Base

  private

  after_commit :generate_activity_item_on_create,  on: :create
  after_commit :generate_activity_item_on_update,  on: :update
  after_commit :generate_activity_item_on_destroy, on: :destroy

  def generate_activity_item_on_create
    ActivityItemWorker.new("create", self.id, "review", title, user_id).perform
  end

  def generate_activity_item_on_update
    ActivityItemWorker.new("update", self.id, "review", title, user_id).perform
  end

  def generate_activity_item_on_destroy
    ActivityItemWorker.new("delete", self.id, "review", title, user_id).perform
  end
end
