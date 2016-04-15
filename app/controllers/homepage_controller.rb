class HomepageController < ApplicationController

  def index
    @posts = Post.all.order(likes: :desc)
    @post = Post.find_by id: params[:id]

    @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
        marker.lat post.latitude.to_f
        marker.lng post.longitude.to_f
        marker.picture({
                  :url => post.photo_url,
                  :width   => 20,
                  :height  => 20
          })
    end  # closes the do
  end # close the index def



  def show
    @post = Post.find_by id: params[:id]
    @posts = Post.all
  end

end
