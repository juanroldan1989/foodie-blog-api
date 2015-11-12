class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :title
      t.text :body

      t.timestamps
    end

    add_index :recipes, :user_id
  end
end
