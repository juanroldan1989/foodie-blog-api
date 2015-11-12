class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :title
      t.text :body

      t.timestamps
    end

    add_index :reviews, :user_id
  end
end
