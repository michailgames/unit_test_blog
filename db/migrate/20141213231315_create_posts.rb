class CreatePosts < ActiveRecord::Migration
  def change
    drop_table :posts
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :category_id

      t.timestamps
    end
  end
end
