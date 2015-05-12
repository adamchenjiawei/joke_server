class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|

      t.string :create_time, null: false
      t.string :group_id, null: false
      t.integer :category_id, null: false
      t.string :category_name, null: false
      t.text   :content, null:false
      t.integer :image_state, null:false
      t.integer :video_state, null:false
      t.datetime :published_at
      t.timestamps null: false
    end
  end
end
