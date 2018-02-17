class Video < ApplicationRecord
    validates :title, :description, :youtube_video_id, presence: true
end
