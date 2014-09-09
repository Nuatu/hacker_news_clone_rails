class ChangePosts < ActiveRecord::Migration
  def change
    change_column :posts, :qty_likes, :integer, default: :'0'
  end
end
