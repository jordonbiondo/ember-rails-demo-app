class BlogPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at

  has_many :blog_post_comments do
    include_data false
    link :related do
      "/api/blog_posts/#{object.id}/comments"
    end
  end
end
