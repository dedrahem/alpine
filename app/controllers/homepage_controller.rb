class HomepageController < ApplicationController

  def index
    @posts = Post.all.order(like: :desc)
    @post = Post.find_by id: params[:id]
  end

  def show
    @post = Post.find_by id: params[:id]
    @posts = Post.all
  end

end
