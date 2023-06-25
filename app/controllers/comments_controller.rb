class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.build(
        author_id: current_user.id,
        body: params[:comment][:body]
        )
    if comment.save
      redirect_to root_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
