class Api::BlogPostsController < ApplicationController
  def index
    render json: BlogPost
            .limit(100)
            .order(:created_at => :desc),
           each_serializer: BlogPostSerializer

  end

  def show
    render json: BlogPost
            .find_by(:id => params[:id]),
           serializer: BlogPostSerializer
  end

  def comments
    render json: BlogPost.find(params[:id]).blog_post_comments
  end

  def create
    create_params = params
                    .require(:data)
                    .require(:attributes).permit(
                      :title,
                      :body
                    )
    @post = BlogPost.new(create_params)

    if @post.save
      render json: @post
    else
      render json: @post,
             status: 422,
             serializer: ActiveModel::Serializer::ErrorSerializer
    end
  end

  def update
    update_params = params
                    .require(:data)
                    .require(:attributes).permit(
                      :title,
                      :body
                    )
    @post = BlogPost.find(params[:id])
    @post.update update_params

    unless @post.errors.any?
      render json: @post
    else
      render json: @post,
             status: 422,
             serializer: ActiveModel::Serializer::ErrorSerializer
    end
  end
end
