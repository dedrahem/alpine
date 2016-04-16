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
    @user = User.new # create the User object required as argument to
    # ... all forms etc requiring an @user variable
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  # create new users with STRONG PARAMETERS

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
