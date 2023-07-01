class PostsController < ApplicationController
  def index
    @posts = Post.order(datetime: :desc).first(20)
    @new_users = User.last(10).reverse
    @post = Post.new
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

    if @post.save
      redirect_to root_path
    else
      flash.alert = "Minimum post length is 8 characters."
      @posts = Post.all
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end
end
