class AddPublishedToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :published, :boolean, default: 0
  end
end

#This way all posts are "private" (not published) by default. Change the default value to 1 if you want posts are "public" (published) by default.
