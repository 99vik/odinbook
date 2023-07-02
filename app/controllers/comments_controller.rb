class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.build(
        author_id: current_user.id,
        body: params[:comment][:body]
        )
    if comment.save
      @post = post
      @comment = comment
      
      respond_to do |format|
        format.turbo_stream { render :create, comment: @comment  }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
