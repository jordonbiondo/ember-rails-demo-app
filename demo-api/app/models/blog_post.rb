class BlogPost < ActiveRecord::Base
  has_many :blog_post_comments
  
  validates :title, presence: true, length: { minimum: 1 }
  validates :body, presence: true, length: { minimum: 1 }
end
