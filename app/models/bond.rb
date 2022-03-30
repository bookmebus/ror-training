# == Schema Information
#
# Table name: bonds
#
#  id         :bigint           not null, primary key
#  state      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  friend_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_bonds_on_user_id_and_friend_id  (user_id,friend_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (friend_id => users.id)
#  fk_rails_...  (user_id => users.id)
#
class Bond < ApplicationRecord
  belongs_to :user
  # friend also user so bond belongs to user, one user can have many friend and friend also user
  belongs_to :friend, class_name: 'user'
  # create enum state for bond
  enum state: {
    following: FOLLOWING,
    requesting: REQUESTING,
    blocking: BLOCKING
  }
  # create scope for state
  scope :following, -> { where(state: FOLLOWING) }
  scope :requesting, -> { where(state: REQUESTING) }
  scope :blocking, -> { where(state: BLOCKING) }
end
