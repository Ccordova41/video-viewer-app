class Video < ApplicationRecord
  has_many :comments, dependent: :destroy

    validates :title, :description, :youtube_video_id, presence: true
end
