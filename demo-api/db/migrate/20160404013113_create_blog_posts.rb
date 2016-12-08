class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :body
      t.string :title
      t.integer :author_id
      t.timestamps null: false
    end
  end
end
