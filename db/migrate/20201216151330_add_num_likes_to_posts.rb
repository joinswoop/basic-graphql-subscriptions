class AddNumLikesToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :num_likes, :integer
  end
end
