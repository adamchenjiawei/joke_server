class Topic < ActiveRecord::Base

  attr_accessible :id, :create_time, :group_id, :category_id,:category_name,
                  :content,:image_state,:video_state,:created_at,:updated_at
end
