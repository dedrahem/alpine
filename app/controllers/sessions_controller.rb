class SessionsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
      email = params[:email]
      password = params[:password]

      @user = User.find_by email: email
      if @user && @user.authenticate(password)
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render :new
      end
    end

  def update
  end

  def delete
    session.delete(:user_id)
    redirect_to root_path
  end

end
