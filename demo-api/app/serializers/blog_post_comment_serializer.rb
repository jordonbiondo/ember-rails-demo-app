class BlogPostCommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :blog_post_id, :blog_post_comment_id, :created_at
end
