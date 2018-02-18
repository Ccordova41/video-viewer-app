class API::VideosController < ApplicationController
  before_action :set_vide, only: [:show, :update, :destroy]

  def index
    videos = Video.all
    render json: videos, status: 200
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      render json: video, status: 201
    else
      render_errors_in_json
    end
  end

  def show
    render json: @video, status:200
  end

  def update
    if @video.update(video_params)
      render json: @video, status: 200
    else
      render_errors_in_json
    end
  end

  def destroy
    @video.destroy
    :no_content
  end

private

  def set_video
    @video = Video.find_by(id: params[:id])
      if !@video
        render json: {
          errors: {
            messages: { video: "can't be found" }
            }
        }, status: 404
      end
    end

    def render_errors_in_json
      render json: {
        errors: {
          messages: video.errors.messages
        }
      }, status: 422
    end

  def video_params
    params.require(:video).permit(:title, :description, :youtube_video_id)
  end

end
