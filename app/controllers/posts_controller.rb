class PostsController < ApplicationController  
  def index
    @posts = Post.order(datetime: :desc).first(20)
    @new_users = User.last(10).reverse
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def likes_list
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new

    @post.body = params[:post][:body]
    @post.author = current_user
    @post.datetime = DateTime.now
    @post.image = params[:post][:image]

    respond_to do |format|
      if @post.save
        format.turbo_stream { render :create, locals: { post: @post } }
      else
        format.html {
          render :index, status: :unprocessable_entity
        }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    destroy_posts_notifications(@post)
    @post.destroy

    respond_to do |format|
      format.turbo_stream { render :delete }
    end
  end

  def load_more
    @posts = Post.order(datetime: :desc).offset(20).first(20)

    respond_to do |format|
      format.turbo_stream { render :add }
    end
  end

  private

  def destroy_posts_notifications(post)
    post.comments.each do |comment|
      Notification.where(comment_id: comment.id).destroy_all
    end

    post.likes.each do |like|
      Notification.where(like_id: like.id).destroy_all
    end
  end
end
