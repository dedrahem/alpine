class CommentsController < ApplicationController
# check before commenting, eligible?
  before_action do
      if @current_user.nil?
        redirect_to sign_in_path
      end
    end

  def new
    @comments = Comment.new
    @users = User.all
    @posts = Post.all
  end

    def create_comment
          @comment = Comment.new params.require(:comment).permit(:body, :post_id, :user_id)
          @post = Post.find_by id: params[:id]
          @comment.body = params[:comment][:body]
          @comment.post_id = @post.id
          # save it
          if @comment.save
            # sign in w/ sessions
              session[:user_id] = @user.id # remember who user is
  # redirect
            redirect_to post_path(id: @post.id)
          else
            render :new
          end  # if
        end # end def create

  def index
  end

  def show
  end

end   # class
end
