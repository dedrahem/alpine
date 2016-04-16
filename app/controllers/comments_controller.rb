class CommentsController < ApplicationController
# check before commenting, eligible?
  before_action :authenticate_user!

  def new
    @comment = Comment.new
    @users = User.all
    @post = Post.find_by id: params[:id]
  end

    def create_comment
          @comment = Comment.new params.require(:comment).permit(:remark, :post_id)
          @comment.user = @current_user
          @post = Post.find_by id: params[:id]
          @comment.remark = params[:comment][:remark]
          @comment.post_id = @post.id
          # save it
          if @comment.save
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
