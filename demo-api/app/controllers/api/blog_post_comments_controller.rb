class Api::BlogPostCommentsController < ApplicationController
  def index
    render json: BlogPostComment.limit(100).order(:created_at => :desc)
  end

  def show
    render json: BlogPostComment.find(params[:id])
  end

  def create
    # TODO
  end

  def update
    # TODO
  end
end
