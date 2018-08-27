# == Schema Information
#
# Table name: posts
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :integer
#

class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  #dependent destroy means the comments related to the post will be deleted if the entire post is deleted.

end
