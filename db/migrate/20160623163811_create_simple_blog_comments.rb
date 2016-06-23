class CreateSimpleBlogComments < ActiveRecord::Migration
  def change
    create_table :simple_blog_comments do |t|
      t.integer :article_id
      t.text :content

      t.timestamps null: false
    end
  end
end
