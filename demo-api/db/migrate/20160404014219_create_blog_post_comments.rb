class CreateBlogPostComments < ActiveRecord::Migration
  def change
    create_table :blog_post_comments do |t|
      t.string :body, null: false
      t.integer :author_id, null: true
      t.integer :blog_post_id, null: false
      t.integer :blog_post_comment_id, null: true
      t.timestamps null: false
    end
  end
end
