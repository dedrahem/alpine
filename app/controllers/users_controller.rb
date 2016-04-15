class UsersController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
    @comments = Comment.all
  end

  def show
    @user = User.find_by id: params[:id]
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new id: params[:id]
      if @user.save
        session[:user_id] = @user.id # remember who user is
        redirect_to root_path
        else
          render :new
      end
  end


  def update
  end

  def destroy
    # VERB is DELETE Controller action is destroy
    @user = User.find_by id: params[:id]
    @user.destroy
    redirect_to users_path
  end

end  # end of the class Users Controller
