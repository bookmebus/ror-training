# == Schema Information
#
# Table name: posts
#
#  id            :bigint           not null, primary key
#  postable_type :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  postable_id   :bigint           not null
#  thread_id     :bigint
#  user_id       :bigint
#
# Indexes
#
#  index_posts_on_postable  (postable_type,postable_id)
#
# Foreign Keys
#
#  fk_rails_...  (thread_id => posts.id)
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord
  # don't understand still figure out
  belongs_to :postable, polymorphic: true
  belongs_to :user
  # by default, it required relation belongs_to but to make it optional, we used optional: true
  belongs_to :thread, class_name: 'Post', optional: true
  has_many :pictures
  # create scope no_reply
  scope :not_reply, -> { where(thread_id: nil) }
end
