class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :qty_likes

      t.timestamp
    end
  end
end
