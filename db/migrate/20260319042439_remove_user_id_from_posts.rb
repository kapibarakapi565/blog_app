class RemoveUserIdFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :posts, :user
  end
end
