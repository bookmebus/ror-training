class PostsController < ApplicationController
  def index; end

  def update; end

  def new
    @create_post = CreatePost.new
  end

  def create
    # create a new post that need param
    @create_post = CreatePost.new(create_post_params)
    if @create_post.save
      redirect_to @create_post
    else
      render 'new'
    end
  end
  # when submit form, it will call show controller

  def show
    @create_post = CreatePost.find(params[:id])
  end

  def edit; end

  def profile; end

  # create a private function to get a param
  private

  def create_post_params
    params.require(:create_posts).permit(:id, :name, :title, :content)
  end
end
