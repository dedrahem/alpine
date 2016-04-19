class PostsController < ApplicationController

  #  before a post is allowed check eligible
    before_action do
        if @current_user.nil?
          redirect_to sign_in_path
        end
      end

  def new
    @post = Post.new  id: params[:id]
  end

  def index
    # @posts = Post.all
    @posts = Post.all.order(likes: :desc)
    @users = User.all
    @comments = Comment.all
    # @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
    #    marker.lat post.latitude.to_f
    #    marker.lng post.longitude.to_f
    #    marker.picture({
    #              :url => post.photo_url,
    #              :width   => 60,
    #              :height  => 60
    #      })
    # end

  end

  def show
    @post = Post.find_by id: params[:id]
    @comment = Comment.new
    @comment.post = @post

    if @post.latitude.nil? || @post.longitude.nil?
        @message = "Please find your location on the map"
        else
        @message = "Your Image and GPS MetaData Uploaded Successfully"
    end
    # @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
    #    marker.lat post.latitude.to_f
    #    marker.lng post.longitude.to_f
    #    marker.picture({
    #              :url => post.photo_url,
    #              :width   => 60,
    #              :height  => 60
    #      })
    # end
  end

  def upvote
    @post = Post.find_by id: params[:id]
    @post.likes = 0 if @post.likes.blank?
    @post.update likes: (@post.likes + 1)
    redirect_to posts_path
  end

  def downvote
    @post = Post.find_by id: params[:id]
    @post.likes = 0 if @post.likes.blank?
    @post.update likes: (@post.likes - 1)
    redirect_to posts_path
  end

  def edit
    @post = Post.find_by id: params[:id]
  end

  def create
    #init a blank new Post
    @post = Post.new
    @post.user = @current_user
    #set the values
    @post.title = params[:post][:title]
    # @post.user_id = params[:post][:user_id]
    @post.postbody = params[:post][:postbody]
    @post.photo = params[:post][:photo]
    # SAVE  !

    if @post.save
      # sign in w/ sessions
        # session[:user_id] = @user_id # remember who user is
        # redirect
      redirect_to posts_path
    else
      render:new
    end
  end

  def update
    # instantiant / Find
    @post = Post.find_by id: params[:id]
    # set values
    @post.title = params[:post][:title]
    @post.postbody = params[:post][:postbody]
    @post.user_id = params[:post][:user_id]
    # save it
    if @post.save
      # redirect to "/posts"
      redirect_to post_path(id: @post.id)
    else
      render :edit
    end
  end

def delete   # IS IT DELETE OR DESTROY
  @post = Post.find_by id: params[:id]
  @post.destroy
  redirect_to posts_path
  end

end # end class
