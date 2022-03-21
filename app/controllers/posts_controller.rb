class PostsController < ApplicationController
  # before action show, update, ... happen we need to do find_post def
  # so in action show, update, ... no need to implement find_post action anymore
  before_action :find_post, only: %i[show update destroy edit]
  def index
    # fetch all data from post model and then order by its id
    @posts = Post.all.order('id DESC')
  end

  def new
    @post = Post.new
  end

  # action to create post
  def create
    @post = Post.new(create_post_param)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    # @post = Post.find(params[:id])
  end

  # view render
  def edit
    # @post = Post.find(params[:id])
  end

  # action edit
  def update
    # @post = Post.find(params[:id])
    if @post.update(create_post_param)
      redirect_to @post
    else
      render 'edit'
    end
  end

  # action deleted
  def destroy
    # @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def create_post_param
    params.require(:post).permit(:user_name, :title, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
