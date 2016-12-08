class BlogPostComment < ActiveRecord::Base
  belongs_to :blog_post
  belongs_to :parent_comment, class_name: BlogPostComment, :foreign_key => :blog_post_comment_id
end
