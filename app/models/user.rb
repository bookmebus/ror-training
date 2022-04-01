# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           not null
#  isPublic               :boolean          default(TRUE), not null
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :bonds
  # 1&2 are the same but write in a difference way to make
  # an association between user to user itself call friend

  # 1
  has_many :fiends, through: :bonds
  # 2
  has_many :inward_bonds,
           class_name: 'Bond',
           foreign_key: :friend_id
  # user friend's can have two state following and requesting
  has_many :followers,
           -> { where('bonds.state = ?', Bond.following) },
           through: :inward_bonds,
           source: :user

  # has_many :follow_requests,
  #          -> { where('bonds.state = ?', Bond::REQUESTING) },
  #          through: :bonds,
  #          source: :friend
  has_many :follow_requests,
           -> { where('bonds.state = ?', Bond.requesting) },
           through: :bonds,
           source: :friend
  # create callback before_save:
  before_save :ensure_proper_name_case
  def to_param
    username
  end

  def login; end

  # create function to generate user avatar
  def gravatar_url
    hash = Digest::MD5.hexdigest(email)
    "https://www.gravatar.com/avatar/#{hash}?d=wavatar"
  end
end
