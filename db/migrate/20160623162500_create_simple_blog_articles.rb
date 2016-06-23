class CreateSimpleBlogArticles < ActiveRecord::Migration
  def change
    create_table :simple_blog_articles do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
