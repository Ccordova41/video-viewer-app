class API::VideosController < ApplicationController
  def index
    videos = Video.all
    render json: videos, status: 200
  end
end
