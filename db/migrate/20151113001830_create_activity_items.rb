class CreateActivityItems < ActiveRecord::Migration
  def change
    create_table :activity_items do |t|
      t.integer :user_id
      t.string  :action_type
      t.string  :resource_type
      t.integer :resource_id
      t.string  :resource_title

      t.timestamps
    end

    add_index :activity_items, :user_id
    add_index :activity_items, :action_type
    add_index :activity_items, :resource_type
    add_index :activity_items, :resource_id
  end
end
