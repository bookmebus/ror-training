class TimelinesController < ApplicationController
  def index
    # select the all following id of current user
    following_ids = *current_user.followings.pluck(:id)
    # grab post that current user not reply his follower and inclue post with
    # place and order that post by created_at
    @posts = Post.not_reply
                 .where(user_id: [current_user.id, following_ids])
                 .includes(postable: [:place]).order('created_at DESC')
  end

  def show; end
end
