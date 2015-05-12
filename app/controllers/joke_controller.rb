class JokeController < ApplicationController

  def index

    time = params[:time]
    time_old = (time.to_i-900).to_s
    topics = Topic.where("image_state = 0 and video_state = 0 and create_time > #{time_old} and create_time < #{time}")
    data = []
    topics.each do |_topic|
      data << _topic.to_json
    end
    render json: {status: 0, data: data, next_time: time.to_i-900,topics_size:topics.length}
  end

end
