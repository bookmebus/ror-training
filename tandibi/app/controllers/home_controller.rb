class HomeController < ApplicationController
  def index
    flash[:notice] = "Hi, there!"
    # if current_user
    #   puts current_user
    # end
  end
end
