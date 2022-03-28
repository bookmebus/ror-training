class HomeController < ApplicationController
  def index
    flash[:notice] = "Hi, there!"
  end
end
