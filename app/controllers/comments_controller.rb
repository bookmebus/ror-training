class CommentsController < ApplicationController
  # before_action :find_post
  def create
    @post = Post.find(params[:post_id])
    # create comments through post model
    @comment = @post.comments.create(params.require(:comment).permit(:name, :comment))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  # private

  # def find_post
  #   @post = Post.find(params[:post_id])
  # end
end
